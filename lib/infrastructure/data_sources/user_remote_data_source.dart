import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:imprime_mas/infrastructure/models/user_model.dart';

class UserRemoteDataSource {
  final http.Client client;

  UserRemoteDataSource(this.client);

  Future<UserModel> getUserById(String id) async {
    final response = await client.get(Uri.parse('https://api.example.com/users/$id'));

    if (response.statusCode == 200) {
      return UserModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load user');
    }
  }
}
