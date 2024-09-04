class Validator {
  static bool allPasswordValidator(String text) {
    return minLengthValidator(text) &&
        minNumberValidator(text) &&
        minCapitalLetterValidator(text) &&
        minLowerCaseValidator(text);
  }

  static bool minLengthValidator(String text) {
    return text.length >= 8;
  }

  static bool minNumberValidator(String text) =>
      RegExp(r'[0-9]').hasMatch(text);

  static bool minCapitalLetterValidator(String text) =>
      RegExp(r'[A-Z]').hasMatch(text);

  static bool minLowerCaseValidator(String text) =>
      RegExp(r'[a-z]').hasMatch(text);
}
