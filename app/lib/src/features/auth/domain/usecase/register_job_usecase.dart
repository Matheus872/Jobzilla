import 'package:basearch/src/features/auth/domain/model/job.dart';
import 'package:basearch/src/features/auth/domain/repository/register_job_interface.dart';

import 'package:flutter_modular/flutter_modular.dart';

class RegisterJobUseCase {
  final repository = Modular.get<IRegisterJob>();

  Future<int?> registerJob(title, subtitle, experience, workJourney, local,
      salary, benefits, description, skills) {
    return repository.registerJob(Job(title, subtitle, experience, workJourney,
        local, salary, benefits, description, skills));
  }
}
