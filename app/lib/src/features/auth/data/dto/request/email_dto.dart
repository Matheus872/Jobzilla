import 'package:basearch/src/features/auth/domain/model/user.dart';

class EmailDto {
  const EmailDto(this.email);

  final String email;

  factory EmailDto.fromDomain(String email) {
    return EmailDto(email);
  }

  factory EmailDto.fromJson(Map<String, dynamic> json) =>
      EmailDto(json['email']);

  Map<String, dynamic> toJson() => {'email': email};
}
