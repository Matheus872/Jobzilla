import 'package:flutter_modular/flutter_modular.dart';
import 'package:localization/localization.dart';

import '../model/user.dart';
import '../repository/login_interface.dart';

class SignUpUseCase {
  final repository = Modular.get<ILogin>();

  String? validateUsername(String username) {
    if (username.isEmpty) {
      return 'username_required'.i18n();
    }

    return null;
  }

  String? validatePassword(String password) {
    if (password.isEmpty) {
      return 'password_required'.i18n();
    }
    return null;
  }

  String? validatePasswordConfirmation(String password) {
    if (password.isEmpty) {
      return 'password_confirmation_required'.i18n();
    }
    return null;
  }
}
