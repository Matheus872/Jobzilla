import 'package:basearch/src/features/auth/domain/model/localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../domain/model/user.dart';
import '../../domain/usecase/job_localization_usecase.dart';

part 'job_localization_viewmodel.g.dart';

class JobLocalizationViewModel = _JobLocalizationViewModelBase
    with _$JobLocalizationViewModel;

abstract class _JobLocalizationViewModelBase with Store {
  final error = JobLocalizationError();
  final _usecase = Modular.get<JobLocalizationUseCase>();

  @observable
  bool isLoading = false;

  void _signIn() {
    Modular.to.navigate('/home');
  }

  @action
  void validateUsername() {}

  @action
  void validatePassword() {}

  Future<Localization> getLocalization(int id) async {
    error.clear();
    try {
      Localization? response = (await _usecase.getLocalization(id));
      print(response);
      return response;
    } catch (e) {
      error.localization = "erro ${e.toString()}";
      throw e;
    } finally {
      isLoading = false;
    }
  }
}

class JobLocalizationError = _JobLocalizationErrorBase
    with _$JobLocalizationError;

abstract class _JobLocalizationErrorBase with Store {
  @observable
  String? localization;

  @computed
  bool get hasErrors => localization != null;

  void clear() {
    localization = null;
  }
}
