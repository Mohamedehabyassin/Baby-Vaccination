extension StringHelper on String? {
  bool get isValid =>
      this != null && this != '' && this != ' ' && this != 'null';

  String removeSpaces() => isValid
      ? this!.replaceAll('"', '').replaceAll("'", '').replaceAll(" ", '')
      : "";
}
