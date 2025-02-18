import 'dart:developer';
import 'package:get_it/get_it.dart';
import 'package:tasks_clean_arch_project/users_feature/data_layer/repository/users_repository.dart';
import 'package:tasks_clean_arch_project/users_feature/domain_layer/repository/base_users_repository.dart';
import 'package:tasks_clean_arch_project/users_feature/domain_layer/use_cases/get_users_usecase.dart';
import 'package:tasks_clean_arch_project/users_feature/presentation_layer/users_cubit/users_cubit.dart';

final sl = GetIt.instance;

class ServiceLocator {
  static init() {
    // Register lazy Users Repository
    sl.registerLazySingleton<BaseUsersRepository>(() => UsersRepository());

    // Register lazy Use case
    sl.registerLazySingleton<GetUsersUseCase>(() => GetUsersUseCase(sl()));

    // Register Cubit class
    sl.registerFactory<UsersCubit>(() => UsersCubit(sl()));
    log('done service');
  }
}
