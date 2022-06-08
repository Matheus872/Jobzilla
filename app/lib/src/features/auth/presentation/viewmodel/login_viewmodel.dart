import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../domain/model/user.dart';
import '../../domain/usecase/login_usecase.dart';

part 'login_viewmodel.g.dart';

class LoginViewModel = _LoginViewModelBase with _$LoginViewModel;

abstract class _LoginViewModelBase with Store {
  final error = LoginError();
  final _usecase = Modular.get<LoginUseCase>();

  @observable
  String username = '';

  @observable
  String password = '';

  @observable
  bool isLoading = false;

  void _signIn() {
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

  void login() async {
    error.clear();

    validateUsername();
    validatePassword();

    if (!error.hasErrors) {
      isLoading = true;
      try {
        User? response = (await _usecase.login(username, password));
        if (response != null) {
          _signIn();
        }
      } catch (e) {
        error.login = "erro ${e.toString()}";
        isLoading = false;
      } finally {
        isLoading = false;
      }
    } else {
      print("Erro - login_viewmodel");
      print(error.login);
      print(error.username);
      print(error.password);
    }
  }
}

class LoginError = _LoginErrorBase with _$LoginError;

abstract class _LoginErrorBase with Store {
  @observable
  String? username;

  @observable
  String? password;

  @observable
  String? login;

  @computed
  bool get hasErrors => username != null || password != null || login != null;

  void clear() {
    username = null;
    password = null;
    login = null;
  }
}
