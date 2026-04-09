class LocationModel {
  const LocationModel({
    required this.latitude,
    required this.longitude,
    required this.timestamp,
    this.accuracy,
    this.altitude,
    this.speed,
    this.heading,
  });
  final double latitude;
  final double longitude;
  final double? accuracy; // meters
  final double? altitude; // meters
  final double? speed; // m/s
  final double? heading; // degrees
  final DateTime timestamp;
  @override
  String toString() =>
      'LocationModel(lat: $latitude, lng: $longitude, acc: ${accuracy?.toStringAsFixed(1)}m)';
}
