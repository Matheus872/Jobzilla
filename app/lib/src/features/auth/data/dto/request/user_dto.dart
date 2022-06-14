import 'package:basearch/src/features/auth/domain/model/user.dart';

class UserDto {
  const UserDto(this.username, this.email, this.profileType, this.password);

  final String username;
  final String? email;
  final String? password;
  final int? profileType;

  factory UserDto.fromDomain(User user) {
    return UserDto(user.username, user.email, user.profileType, user.password);
  }

  factory UserDto.fromJson(Map<String, dynamic> json) => UserDto(
      json['username'], json['email'], json['profileType'], json['password']);

  Map<String, dynamic> toJson() => {
        'username': username,
        'email': email,
        'profileType': profileType,
        'password': password
      };
}
