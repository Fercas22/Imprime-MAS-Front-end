import 'package:imprime_mas/domain/entities/user.dart';
import 'package:imprime_mas/domain/repositories/user_repository.dart';
import 'package:imprime_mas/domain/value_objects/email.dart';
import 'package:imprime_mas/infrastructure/data_sources/user_remote_data_source.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource remoteDataSource;

  UserRepositoryImpl(
    this.remoteDataSource,
  );

  @override
  Future<User> getUserById(String id) async {
    final userModel = await remoteDataSource.getUserById(id);
    return User(
      id: userModel.id,
      name: userModel.name,
      email: Email(userModel.email),
    );
  }
}
