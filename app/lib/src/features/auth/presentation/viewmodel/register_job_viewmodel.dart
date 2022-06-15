import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../domain/model/user.dart';
import '../../domain/usecase/login_usecase.dart';
import '../../domain/usecase/register_job_usecase.dart';

part 'register_job_viewmodel.g.dart';

class RegisterJobViewModel = _RegisterJobViewModelBase
    with _$RegisterJobViewModel;

abstract class _RegisterJobViewModelBase with Store {
  final error = RegisterJobError();
  final _usecase = Modular.get<RegisterJobUseCase>();

  @observable
  String title = '';

  @observable
  String subtitle = '';

  @observable
  String experience = '';

  @observable
  String workJourney = '';

  @observable
  String place = '';

  @observable
  String salary = '';

  @observable
  String benefits = '';

  @observable
  String description = '';

  @observable
  List<int> skills = [];

  @observable
  bool isLoading = false;

  void registerJob() async {
    isLoading = true;
    try {
      int? response = (await _usecase.registerJob(title, subtitle, experience,
          workJourney, place, salary, benefits, description, skills));
      if (response != null) {
        Modular.to.navigate('/companyhome');
      }
    } catch (e) {
      error.username = "erro ${e.toString()}";
      print(error.username);
      isLoading = false;
    } finally {
      isLoading = false;
    }
  }
}

class RegisterJobError = _RegisterJobErrorBase with _$RegisterJobError;

abstract class _RegisterJobErrorBase with Store {
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
