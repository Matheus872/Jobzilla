import 'package:basearch/src/features/auth/domain/repository/forgot_password_interface.dart';

import '../../domain/repository/forgot_password_interface.dart';
import 'package:dio/dio.dart';

import '../dto/request/email_dto.dart';

class ForgotPasswordRepository implements IForgotPassword {
  @override
  Future<String?> sendVerificationCode(String email) async {
    final dto = EmailDto.fromDomain(email);
    final response = await Dio().post(
      'https://ol0ll.mocklab.io/verificationcode',
      data: dto.toJson(),
    );
    if (response.statusCode == 200) {
      final verificationCode = response.headers.value('verification_code');
      print('codigo para verificação:');
      return Future.value(verificationCode);
    } else {
      throw Exception("Errro ao enviar código de verificação");
    }
  }

  @override
  Future<String?> resetPassword(String email) async {
    print('Reset da senha no servidor');
    return '123';
  }
}
