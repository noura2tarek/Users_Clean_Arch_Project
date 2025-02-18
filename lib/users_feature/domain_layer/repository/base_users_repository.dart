import '../entities/user_entity.dart';

abstract class BaseUsersRepository {
  // abstract get users method
  Future<List<User>> getUsers();
}