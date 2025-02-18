import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:tasks_clean_arch_project/users_feature/domain_layer/use_cases/get_users_usecase.dart';

import '../../domain_layer/entities/user_entity.dart';

part 'users_state.dart';

class UsersCubit extends Cubit<UsersState> {
  final GetUsersUseCase getUsersUseCase;

  UsersCubit(this.getUsersUseCase) : super(UsersInitial());

  // Get context to return users cubit instance
  static UsersCubit get(context) => BlocProvider.of(context);
  List<User> users = [];

  // Get users
  Future<void> getUsersData() async {
    emit(UsersLoadingState());
    users = await getUsersUseCase();
    emit(UsersSuccessState());
  }
}
