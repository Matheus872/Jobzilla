import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../domain/model/user.dart';
import '../../domain/usecase/login_usecase.dart';

part 'register_job_viewmodel.g.dart';

class RegisterJobViewModel = _RegisterJobViewModelBase
    with _$RegisterJobViewModel;

abstract class _RegisterJobViewModelBase with Store {
  final _usecase = Modular.get<LoginUseCase>();

  @observable
  String username = '';

  @observable
  String password = '';

  @observable
  bool isLoading = false;

  int? profiletype = 1;
}
