import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../domain/model/user.dart';
import '../../domain/usecase/profile_details_usecase.dart';

part 'profile_details_viewmodel.g.dart';

class ProfileDetailsViewModel = _ProfileDetailsViewModelBase
    with _$ProfileDetailsViewModel;

abstract class _ProfileDetailsViewModelBase with Store {
  final error = ProfileDetailsError();
  final _usecase = Modular.get<ProfileDetailsUseCase>();

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
        print(error.login);
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

class ProfileDetailsError = _ProfileDetailsErrorBase with _$ProfileDetailsError;

abstract class _ProfileDetailsErrorBase with Store {
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
