import 'package:basearch/src/features/auth/presentation/view/page/ForgotPassword.dart';
import 'package:basearch/src/features/auth/presentation/view/page/SignUp.dart';
import 'package:basearch/src/features/auth/presentation/view/page/Register.dart';
import 'package:basearch/src/features/auth/presentation/view/page/forgot_password.dart';
import 'package:basearch/src/features/auth/presentation/view/page/home.dart';
import 'package:basearch/src/features/auth/presentation/view/page/job_details.dart';
import 'package:basearch/src/features/auth/presentation/view/page/job_localization.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../onboarding/presentation/page/onboard.dart';
import 'data/repository/login_repository.dart';
import 'domain/repository/login_interface.dart';
import 'domain/usecase/login_usecase.dart';
import 'presentation/view/page/LoginPage.dart';
import 'presentation/viewmodel/login_viewmodel.dart';

class AuthModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.factory((i) => LoginViewModel()),
        Bind.factory((i) => LoginUseCase()),
        Bind.factory<ILogin>((i) => LoginRepository()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, __) => const Onboarding(), children: []),
        ChildRoute('/login', child: (_, __) => const LoginPage(), children: []),
        ChildRoute('/signup',
            child: (_, __) => const RegisterPage(), children: []),
        ChildRoute('/forgotpswd',
            child: (_, __) => const ForgotPasswordPage(), children: []),
        ChildRoute('/job',
            child: (_, __) => const JobDetailsPage(), children: []),
        ChildRoute('/localization',
            child: (_, __) => const JobLocalizationPage(
                  title: 'local',
                ),
            children: []),
        ChildRoute('/home', child: (_, __) => const homePage(), children: []),
      ];
}
