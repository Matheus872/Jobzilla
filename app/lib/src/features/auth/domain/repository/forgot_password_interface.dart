import '../model/user.dart';

abstract class IForgotPassword {
  Future<String?> sendVerificationCode(String email);
  Future<String?> resetPassword(String password);
}
