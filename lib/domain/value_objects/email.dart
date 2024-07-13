class Email {
  final String value;

  Email(this.value) {
    if (!RegExp(r"^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)) {
      throw ArgumentError("Invalid email format");
    }
  }
}
