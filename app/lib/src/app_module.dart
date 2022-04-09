import 'package:basearch/src/features/onboarding/presentation/page/onboard.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'features/auth/auth_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: AuthModule()),
      ];
}
