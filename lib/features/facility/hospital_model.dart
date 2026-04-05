import 'package:google_maps_flutter/google_maps_flutter.dart';

class HospitalModel {
  HospitalModel({
    required this.name,
    required this.description,
    required this.position,
  });
  final String name;
  final String description;
  final LatLng position;
}
