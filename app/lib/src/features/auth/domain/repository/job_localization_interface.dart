import 'package:basearch/src/features/auth/domain/model/localization.dart';

import '../model/user.dart';

abstract class IJobLocalization {
  Future<Localization> getLocalization(int id);
}
