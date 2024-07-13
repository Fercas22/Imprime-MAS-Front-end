import 'package:imprime_mas/domain/entities/user.dart';
import 'package:imprime_mas/domain/repositories/user_repository.dart';

class GetUser {
  final UserRepository repository;

  GetUser(this.repository);

  Future<User> call(String id) {
    return repository.getUserById(id);
  }
}
