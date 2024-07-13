import 'package:imprime_mas/domain/entities/user.dart';

abstract class UserRepository {
  Future<User> getUserById(String id);
}
