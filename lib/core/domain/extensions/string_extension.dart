extension StringHelper on String? {
  bool isValid() => this != null && this != '' && this != ' ' && this != 'null';

  String removeSpaces() =>
      isValid()
          ? this!.replaceAll('"', '').replaceAll("'", '').replaceAll(" ", '')
          : "";
}
