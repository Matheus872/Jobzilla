import 'package:basearch/src/features/auth/domain/model/job.dart';
import 'package:basearch/src/features/auth/domain/usecase/company_home_usecase.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'company_home_viewmodel.g.dart';

class CompanyHomeViewModel = _CompanyHomeViewModelBase
    with _$CompanyHomeViewModel;

abstract class _CompanyHomeViewModelBase with Store {
  final _usecase = Modular.get<CompanyHomeUseCase>();

  @observable
  String username = '';

  @observable
  String password = '';

  @observable
  bool isLoading = false;

  int? profiletype = 1;

  Future<List<Job>?> getJobs() async {
    try {
      List<Job>? response = (await _usecase.getJobs());
      return response;
    } catch (e) {
    } finally {}
  }
}
