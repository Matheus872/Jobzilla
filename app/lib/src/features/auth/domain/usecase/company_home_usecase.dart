import 'package:basearch/src/features/auth/domain/model/job.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../repository/company_home.dart';

class CompanyHomeUseCase {
  final repository = Modular.get<ICompanyHome>();

  Future<List<Job>?> getJobs() {
    return repository.getJobs();
  }
}
