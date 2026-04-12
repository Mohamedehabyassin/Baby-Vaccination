import 'package:flutter_polyline_points/flutter_polyline_points.dart';

class DirectionDetails {
  DirectionDetails(
    this.distanceValue,
    this.durationValue,
    this.distanceText,
    this.durationText,
    this.encodedPoints,
  );
  int distanceValue;
  int durationValue;
  String distanceText;
  String durationText;
  List<PointLatLng> encodedPoints;
}
