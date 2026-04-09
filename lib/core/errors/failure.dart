class Failure<T> {
  Failure({this.message, this.error});
  String? message;
  T? error;
}
