import 'package:basearch/src/features/auth/domain/model/localization.dart';
import 'package:basearch/src/features/auth/domain/repository/forgot_password_interface.dart';
import 'package:basearch/src/features/auth/domain/repository/job_localization_interface.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:localization/localization.dart';
import '../repository/forgot_password_interface.dart';

class JobLocalizationUseCase {
  final repository = Modular.get<IJobLocalization>();

  Future<Localization> getLocalization(int id) {
    return repository.getLocalization(id);
  }
}
