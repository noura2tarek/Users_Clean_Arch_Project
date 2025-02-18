import 'package:tasks_clean_arch_project/users_feature/domain_layer/entities/user_entity.dart';
import 'package:tasks_clean_arch_project/users_feature/domain_layer/repository/base_users_repository.dart';
import '../models/user_model.dart';

// Concrete implementation of BaseUserRepository
class UsersRepository extends BaseUsersRepository {
  // implement get users method
  @override
  Future<List<User>> getUsers() async {
    List<User> users = [];
    // Add some delay to apply loading
    await Future.delayed(const Duration(seconds: 1));
    // make dummy users json
    List<Map<String, dynamic>> usersMap = [
      {
        'name': 'Ahmed',
        'email': 'ahmed@gmail.com',
        'phoneNumber': '01145076423',
      },
      {
        'name': 'Mohamed',
        'email': 'mohamed@gmail.com',
        'phoneNumber': '01145545423',
      },
      {
        'name': 'Yasser',
        'email': 'yasser@gmail.com',
        'phoneNumber': '01145545423',
      },
    ];
    // convert map to list of users
    for (var user in usersMap) {
      users.add(UserModel.fromJson(user));
    }
    return users;
  }
}
