import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../domain/model/user.dart';
import '../../domain/usecase/forgot_password_usecase.dart';

part 'forgot_password_viewmodel.g.dart';

class ForgotPasswordViewModel = _ForgotPasswordViewModelBase
    with _$ForgotPasswordViewModel;

abstract class _ForgotPasswordViewModelBase with Store {
  final error = ForgotPasswordError();
  final _usecase = Modular.get<ForgotPasswordUseCase>();

  @observable
  bool isLoading = false;

  @observable
  String email = '';

  @observable
  String newPassword = '';

  @observable
  String newPasswordConfirmation = '';

  @observable
  String pinCode = '';

  @observable
  String? verificationCode = '123456';

  @action
  void validateEmail() {
    error.email = _usecase.validateEmail(email);
  }

  @action
  String validateEmailMessage() {
    validateEmail();
    return error.email;
  }

  @action
  void validateNewPassword() {
    error.newPassword = _usecase.validateNewPassword(newPassword);
  }

  @action
  void validateNewPasswordConfirmation() {
    error.newPasswordConfirmation =
        _usecase.validateNewPasswordConfirmation(newPasswordConfirmation);
  }

  @action
  void validatePinCode() {
    error.pinCode = _usecase.validatePinCode(pinCode, verificationCode);
  }

  @action
  String validatePinCodeMessage() {
    validatePinCode();
    return error.pinCode;
  }

  void sendVerificationCode() async {
    error.clear();

    validateEmail();

    if (!error.hasErrors) {
      isLoading = true;
      try {
        String? response = (await _usecase.sendVerificationCode(email));
        if (response != null) {
          print(response);
        }
      } catch (e) {
        error.sendCode = "erro ${e.toString()}";
      } finally {
        isLoading = false;
      }
    } else {
      print("Erro - forgot_password_viewmodel");
      print(error.email);
      print(error.sendCode);
    }
  }

  void resetPassword() async {
    error.clear();

    validateNewPassword();
    validateNewPasswordConfirmation();

    if (!error.hasErrorsOnReseting) {
      isLoading = true;
      try {
        String? response = (await _usecase.resetPassword(newPassword));
        if (response != null) {
          print(response);
        }
      } catch (e) {
        error.sendCode = "erro ${e.toString()}";
      } finally {
        isLoading = false;
      }
    } else {
      print("Erro - forgot_password_viewmodel");
      print(error.newPassword);
      print(error.newPasswordConfirmation);
    }
  }
}

class ForgotPasswordError = _ForgotPasswordErrorBase with _$ForgotPasswordError;

abstract class _ForgotPasswordErrorBase with Store {
  @observable
  String email = " ";

  @observable
  String? sendCode;

  @observable
  String? newPassword;

  @observable
  String? newPasswordConfirmation;

  @observable
  String pinCode = " ";

  @computed
  bool get hasErrors => email != " ";

  @computed
  bool get hasErrorsOnReseting =>
      newPassword != null || newPasswordConfirmation != null;

  @computed
  bool get hasErrorsOnPinCode => pinCode != " ";

  void clear() {
    email = " ";
    newPassword = null;
    newPasswordConfirmation = null;
  }
}
