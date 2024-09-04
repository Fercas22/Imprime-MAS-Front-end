// models/user.dart
class User {
  final String token;

  User({
    required this.token,
  });

  // Factory method para crear una instancia de User desde un JSON
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      token: json['token'], // Extrae el token desde la respuesta JSON
    );
  }
}
