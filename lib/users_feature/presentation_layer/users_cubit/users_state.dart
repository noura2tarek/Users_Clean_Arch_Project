part of 'users_cubit.dart';

@immutable
sealed class UsersState {}

final class UsersInitial extends UsersState {}

final class UsersSuccessState extends UsersState {}

final class UsersLoadingState extends UsersState {}
