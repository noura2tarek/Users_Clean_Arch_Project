import 'package:equatable/equatable.dart';

// User entity contain user data
class User extends Equatable {
  final String name;
  final String email;
  final String phoneNumber;

  const User({
    required this.name,
    required this.email,
    required this.phoneNumber,
  });

  @override
  List<Object?> get props => [name, email, phoneNumber];
}
