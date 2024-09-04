// services/auth_service.dart
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/user.dart';

class AuthService {
  final String _baseUrl = 'http://127.0.0.1:8000/api/auth';

  Future<User> login(String email, String password) async {
    final url = Uri.parse('$_baseUrl/login');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'email': email, 'password': password}),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      if (data['status'] == true) {
        // Si el login es exitoso, crea un User con el token de la respuesta
        return User.fromJson(data['data']);
      } else {
        // Si la respuesta contiene un mensaje de error, lo lanzamos como excepción
        throw Exception(data['message'] ?? 'Error desconocido');
      }
    } else {
      throw Exception('Error en la solicitud: ${response.reasonPhrase}');
    }
  }
}
