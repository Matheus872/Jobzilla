import 'package:basearch/src/features/auth/domain/repository/forgot_password_interface.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:localization/localization.dart';
import '../repository/forgot_password_interface.dart';

class ForgotPasswordUseCase {
  final repository = Modular.get<IForgotPassword>();

  String validateEmail(String email) {
    if (email.isEmpty) {
      return 'email_required'.i18n();
    }
    if (!email.contains('@')) {
      return 'email_not_valid'.i18n();
    }
    return " ";
  }

  String? validateNewPassword(String newPassword) {
    if (newPassword.isEmpty) {
      return 'new_password_required'.i18n();
    }
    return null;
  }

  String? validateNewPasswordConfirmation(String newPasswordConfirmation) {
    if (newPasswordConfirmation.isEmpty) {
      return 'new_password_confirmation_required'.i18n();
    }
    return null;
  }

  String validatePinCode(String pinCode, String? verificationCode) {
    if (pinCode.isEmpty) {
      return 'pin_required'.i18n();
    }
    if (pinCode.length < 6) {
      return 'pin_six_digits'.i18n();
    }
    if (pinCode != verificationCode) {
      return 'pin_incorrect'.i18n();
    }
    return " ";
  }

  Future<String?> sendVerificationCode(String email) {
    return repository.sendVerificationCode(email);
  }

  Future<String?> resetPassword(String password) {
    return repository.resetPassword(password);
  }
}
