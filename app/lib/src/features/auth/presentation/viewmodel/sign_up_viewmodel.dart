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
  String password = '';

  @observable
  String passwordConfirmation = '';

  @observable
  bool isLoading = false;

  void _signedUp() {
    Modular.to.navigate('/home');
  }

  @action
  void validateUsername() {
    error.username = _usecase.validateUsername(username);
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
    validatePassword();
    validatePasswordConfirmation();
    validatePasswordConfirmationEqualPassword();

    if (!error.hasErrors) {
      isLoading = true;
      try {
        User? response = (await _usecase.signUp(username, password));
        if (response != null) {
          _signedUp();
        }
      } catch (e) {
        error.signUp = "erro ${e.toString()}";
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
