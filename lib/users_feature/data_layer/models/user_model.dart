import '../../domain_layer/entities/user_entity.dart';

class UserModel extends User {
  const UserModel({
    required super.name,
    required super.email,
    required super.phoneNumber,
  });

  // factory to return user model
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'],
      email: json['email'],
      phoneNumber: json['phoneNumber'],
    );
  }
}
