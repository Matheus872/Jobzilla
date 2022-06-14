import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../domain/model/user.dart';
import '../../domain/usecase/login_usecase.dart';

part 'company_home_viewmodel.g.dart';

class CompanyHomeViewModel = _CompanyHomeViewModelBase
    with _$CompanyHomeViewModel;

abstract class _CompanyHomeViewModelBase with Store {
  final _usecase = Modular.get<LoginUseCase>();

  @observable
  String username = '';

  @observable
  String password = '';

  @observable
  bool isLoading = false;

  int? profiletype = 1;
}
