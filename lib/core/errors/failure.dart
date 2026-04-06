class Failure<T> {
  Failure({this.message, this.errorObject});
  String? message;
  T? errorObject;
}
