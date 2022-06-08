import 'package:flutter_modular/flutter_modular.dart';
import 'package:localization/localization.dart';

import '../model/user.dart';
import '../repository/sign_up_interface.dart';

class SignUpUseCase {
  final repository = Modular.get<ISignUp>();

  String? validateUsername(String username) {
    if (username.isEmpty) {
      return 'username_required'.i18n();
    }

    return null;
  }

  String validateEmail(String email) {
    if (email.isEmpty) {
      return 'email_required'.i18n();
    }
    if (!email.contains('@')) {
      return 'email_not_valid'.i18n();
    }
    return " ";
  }

  String? validatePassword(String password) {
    if (password.isEmpty) {
      return 'password_required'.i18n();
    }
    return null;
  }

  String? validatePasswordConfirmation(String passwordConfirmation) {
    if (passwordConfirmation.isEmpty) {
      return 'password_confirmation_required'.i18n();
    }
    return null;
  }

  String? validatePasswordConfirmationEqualPassword(
      String password, String passwordConfirmation) {
    if (passwordConfirmation != password) {
      return 'password_confirmation_must_be_the_same_as_password'.i18n();
    }
    return null;
  }

  Future<User?> signUp(String username, String email, String password) {
    return repository.signUp(User(
      username,
      password,
      email,
    ));
  }
}
