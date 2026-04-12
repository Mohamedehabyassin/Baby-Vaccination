import 'package:baby_vaccination/core/errors/failure.dart';
import 'package:baby_vaccination/core/models/location_model.dart';
import 'package:baby_vaccination/core/services/location/location_errors_enum.dart';
import 'package:baby_vaccination/core/services/location/location_service.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';

part 'facilities_event.dart';
part 'facilities_state.dart';
part 'facilities_bloc.freezed.dart';

@injectable
class FacilitiesBloc extends Bloc<FacilitiesEvent, FacilitiesState> {
  FacilitiesBloc(this._locationService)
    : super(const FacilitiesState.initial()) {
    on<FacilitiesEvent>((event, emit) async {
      await event.whenOrNull(
        loadLocation: () => _onLoadLocation(emit),
        retryLocation: () => _onLoadLocation(emit),
      );
    });
  }

  final LocationServiceImpl _locationService;
  GoogleMapController? mapController;

  void setMapController(GoogleMapController controller) {
    mapController = controller;
  }

  void centerOnCurrentLocation(LocationModel location) {
    mapController?.animateCamera(
      CameraUpdate.newLatLng(LatLng(location.latitude, location.longitude)),
    );
  }

  Future<void> _onLoadLocation(Emitter<FacilitiesState> emit) async {
    emit(const FacilitiesState.loading());
    final result = await _locationService.getCurrentLocation();
    result.fold(
      (failure) => emit(FacilitiesState.error(failure)),
      (success) => emit(FacilitiesState.loaded(success.data!)),
    );
  }

  Set<Marker> buildMarkers(LocationModel? location) {
    if (location == null) return {};
    return {
      Marker(
        markerId: const MarkerId('clinic_1'),
        position: LatLng(location.latitude + 0.01, location.longitude + 0.01),
        infoWindow: const InfoWindow(
          title: 'Baby Care Clinic',
          snippet: 'Open 24/7',
        ),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
      ),
      Marker(
        markerId: const MarkerId('clinic_2'),
        position: LatLng(location.latitude - 0.005, location.longitude - 0.01),
        infoWindow: const InfoWindow(
          title: 'Nurture Health Center',
          snippet: 'Specialized in Pediatrics',
        ),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
      ),
    };
  }
}
