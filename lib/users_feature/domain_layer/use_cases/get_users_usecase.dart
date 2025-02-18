import 'package:tasks_clean_arch_project/core/base_use_case/base_use_case.dart';
import '../entities/user_entity.dart';
import '../repository/base_users_repository.dart';

class GetUsersUseCase extends BaseUseCase<List<User>> {
  // create an instance of base repository
  final BaseUsersRepository baseUsersRepository;

  GetUsersUseCase(this.baseUsersRepository);

  @override
  Future<List<User>> call() async {
    return await baseUsersRepository.getUsers();
  }
}
