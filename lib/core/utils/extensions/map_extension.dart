extension MapHelper on Map<String, dynamic>? {
  Map<String, dynamic> removeNullAndEmpty() {
    Map<String, dynamic>? map = this;
    map?.removeWhere((key, value) => (value == null || value == ''));
    return map ?? {};
  }
}
