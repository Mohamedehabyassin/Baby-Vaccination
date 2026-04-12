// core/services/location_service_impl.dart

import 'dart:async';
import 'package:baby_vaccination/core/errors/failure.dart';
import 'package:baby_vaccination/core/models/location_model.dart';
import 'package:baby_vaccination/core/models/success.dart';
import 'package:baby_vaccination/core/services/location/location_errors_enum.dart';

import 'package:baby_vaccination/core/services/location/location_permission_status.dart';
import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class LocationServiceImpl {
  // Broadcast controller — multiple cubits can listen to the same stream
  StreamController<LocationModel>? _streamController;
  StreamSubscription<Position>? _positionSub;
  bool _isWatching = false;

  // ─── Permission ────────────────────────────────────────────────────────────
  Future<LocationPermissionStatus> checkPermission() async {
    final permission = await Geolocator.checkPermission();
    return _mapPermission(permission);
  }

  Future<Either<Failure<LocationErrorsEnum>, Success<bool>>>
  requestPermission() async {
    // 1. Check if location services are on at all
    if (!await isLocationServiceEnabled()) {
      return Left(Failure(error: LocationErrorsEnum.locationServiceDisabled));
    }

    var permission = await Geolocator.checkPermission();

    // 2. First time — ask the user
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }

    // 3. Permanently denied — send user to settings
    if (permission == LocationPermission.deniedForever) {
      return Left(
        Failure(error: LocationErrorsEnum.locationPermissionDeniedForever),
      );
    }

    // 4. Still denied after prompt
    if (permission == LocationPermission.denied) {
      return Left(Failure(error: LocationErrorsEnum.locationPermissionDenied));
    }

    return Right(
      Success(
        data:
            permission == LocationPermission.whileInUse ||
            permission == LocationPermission.always,
      ),
    );
  }

  Future<bool> isLocationServiceEnabled() =>
      Geolocator.isLocationServiceEnabled();

  // ─── One-shot position ─────────────────────────────────────────────────────

  Future<Either<Failure<LocationErrorsEnum>, Success<LocationModel>>>
  getCurrentLocation() async {
    await requestPermission(); // throws if not granted

    try {
      final position = await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.high,
          timeLimit: Duration(seconds: 10),
        ),
      );
      return Right(Success(data: position.toModel()));
    } on TimeoutException {
      // Fallback to last known position if GPS is slow
      final last = await Geolocator.getLastKnownPosition();
      if (last != null) return Right(Success(data: last.toModel()));
      return Left(Failure(error: LocationErrorsEnum.locationFetchException));
    } catch (e) {
      return Left(Failure(error: LocationErrorsEnum.locationFetchException));
    }
  }

  // ─── Live stream ───────────────────────────────────────────────────────────

  Stream<LocationModel> watchLocation({double distanceFilter = 10}) {
    // Return existing stream if already watching
    if (_isWatching && _streamController != null) {
      return _streamController!.stream;
    }

    _streamController ??= StreamController<LocationModel>.broadcast(
      onCancel: _onStreamCancelled,
    );

    _startPositionStream(distanceFilter);
    return _streamController!.stream;
  }

  void _startPositionStream(double distanceFilter) {
    _isWatching = true;

    _positionSub =
        Geolocator.getPositionStream(
          locationSettings: LocationSettings(
            accuracy: LocationAccuracy.high,
            distanceFilter: distanceFilter.toInt(),
            timeLimit: const Duration(seconds: 30),
          ),
        ).listen(
          (position) => _streamController?.add(position.toModel()),
          onError: (Object error) {
            if (error is LocationServiceDisabledException) {
              _streamController?.addError(
                const LocationServiceDisabledException(),
              );
            } else {
              _streamController?.addError(error.toString());
            }
          },
          cancelOnError: false, // keep stream alive on transient errors
        );
  }

  void _onStreamCancelled() {
    // Called when the last listener unsubscribes from the broadcast stream.
    // We keep the controller open so new listeners can re-subscribe.
    _positionSub?.cancel();
    _isWatching = false;
  }

  // ─── Lifecycle ─────────────────────────────────────────────────────────────

  Future<void> dispose() async {
    await _positionSub?.cancel();
    await _streamController?.close();
    _streamController = null;
    _isWatching = false;
  }

  // ─── Helper ────────────────────────────────────────────────────────────────

  LocationPermissionStatus _mapPermission(LocationPermission p) => switch (p) {
    LocationPermission.always ||
    LocationPermission.whileInUse => LocationPermissionStatus.granted,
    LocationPermission.deniedForever => LocationPermissionStatus.deniedForever,
    LocationPermission.denied => LocationPermissionStatus.denied,
    LocationPermission.unableToDetermine => LocationPermissionStatus.restricted,
  };
}

extension on Position {
  LocationModel toModel() => LocationModel(
    latitude: latitude,
    longitude: longitude,
    accuracy: accuracy,
    altitude: altitude,
    speed: speed,
    heading: heading,
    timestamp: timestamp,
  );
}
