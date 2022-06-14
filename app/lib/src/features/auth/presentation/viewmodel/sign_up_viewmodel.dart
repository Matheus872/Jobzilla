import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../domain/model/user.dart';
import '../../domain/usecase/sign_up_usecase.dart';

part 'sign_up_viewmodel.g.dart';

class SignUpViewModel = _SignUpViewModelBase with _$SignUpViewModel;

abstract class _SignUpViewModelBase with Store {
  final error = SignUpError();
  final _usecase = Modular.get<SignUpUseCase>();

  @observable
  String username = '';

  @observable
  String email = '';

  @observable
  String password = '';

  @observable
  String passwordConfirmation = '';

  @observable
  int profileType = 1;

  @observable
  bool isLoading = false;

  void _signedUp() {
    profileType == 1
        ? Modular.to.navigate('/home')
        : profileType == 2
            ? Modular.to.navigate('/companyhome')
            : print("Tipo de perfil inválido");
  }

  @action
  void validateUsername() {
    error.username = _usecase.validateUsername(username);
  }

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
  void validatePassword() {
    error.password = _usecase.validatePassword(password);
  }

  @action
  void validatePasswordConfirmation() {
    error.passwordConfirmation =
        _usecase.validatePasswordConfirmation(passwordConfirmation);
  }

  @action
  void validatePasswordConfirmationEqualPassword() {
    error.passwordConfirmationEquality =
        _usecase.validatePasswordConfirmationEqualPassword(
            password, passwordConfirmation);
  }

  void signUp() async {
    error.clear();

    validateUsername();
    validateEmail();
    validatePassword();
    validatePasswordConfirmation();
    validatePasswordConfirmationEqualPassword();

    if (!error.hasErrors) {
      isLoading = true;
      try {
        User? response =
            (await _usecase.signUp(username, email, password, profileType));
        if (response != null) {
          _signedUp();
        }
      } catch (e) {
        error.signUp = "erro ${e.toString()}";
        print(error.signUp);
      } finally {
        isLoading = false;
      }
    } else {
      print("Erro - sign_up_viewmodel");
      print(error.username);
      print(error.password);
      print(error.passwordConfirmation);
      print(error.passwordConfirmationEquality);
      print(error.signUp);
    }
  }
}

class SignUpError = _SignUpErrorBase with _$SignUpError;

abstract class _SignUpErrorBase with Store {
  @observable
  String? username;

  @observable
  String email = '';

  @observable
  String? password;

  @observable
  String? passwordConfirmation;

  @observable
  String? passwordConfirmationEquality;

  @observable
  String? signUp;

  @computed
  bool get hasErrors =>
      username != null ||
      email != " " ||
      password != null ||
      passwordConfirmation != null ||
      passwordConfirmationEquality != null ||
      signUp != null;

  void clear() {
    username = null;
    password = null;
    passwordConfirmation = null;
    signUp = null;
  }
}
