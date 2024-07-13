import 'package:imprime_mas/domain/value_objects/email.dart';

class User {
  final String id;
  final String name;
  final Email email;

  User({
    required this.id,
    required this.name,
    required this.email,
  });
}
