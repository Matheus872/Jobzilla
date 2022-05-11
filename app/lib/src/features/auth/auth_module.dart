<<<<<<< Updated upstream
=======
import 'package:basearch/src/features/auth/domain/repository/forgot_password_interface.dart';
import 'package:basearch/src/features/auth/domain/repository/job_localization_interface.dart';
>>>>>>> Stashed changes
import 'package:basearch/src/features/auth/domain/repository/sign_up_interface.dart';
import 'package:basearch/src/features/auth/presentation/view/page/sign_up.dart';
import 'package:basearch/src/features/auth/presentation/view/page/forgot_password.dart';
import 'package:basearch/src/features/auth/presentation/view/page/home.dart';
import 'package:basearch/src/features/auth/presentation/view/page/job_details.dart';
import 'package:basearch/src/features/auth/presentation/view/page/job_localization.dart';
<<<<<<< Updated upstream
=======
import 'package:basearch/src/features/auth/presentation/viewmodel/forgot_password_viewmodel.dart';
import 'package:basearch/src/features/auth/presentation/viewmodel/job_localization_viewmodel.dart';
>>>>>>> Stashed changes
import 'package:basearch/src/features/auth/presentation/viewmodel/sign_up_viewmodel.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../onboarding/presentation/page/onboard.dart';
<<<<<<< Updated upstream
import 'data/repository/login_repository.dart';
import 'data/repository/sign_up_repository.dart';
import 'domain/repository/login_interface.dart';
=======
import 'data/repository/forgot_password_repository.dart';
import 'data/repository/job_localization_repository.dart';
import 'data/repository/login_repository.dart';
import 'data/repository/sign_up_repository.dart';
import 'domain/repository/login_interface.dart';
import 'domain/usecase/forgot_password_usecase.dart';
import 'domain/usecase/job_localization_usecase.dart';
>>>>>>> Stashed changes
import 'domain/usecase/login_usecase.dart';
import 'domain/usecase/sign_up_usecase.dart';
import 'presentation/view/page/login.dart';
import 'presentation/viewmodel/login_viewmodel.dart';

class AuthModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.factory((i) => LoginViewModel()),
        Bind.factory((i) => LoginUseCase()),
        Bind.factory<ILogin>((i) => LoginRepository()),
        Bind.factory((i) => SignUpViewModel()),
        Bind.factory((i) => SignUpUseCase()),
        Bind.factory<ISignUp>((i) => SignUpRepository()),
<<<<<<< Updated upstream
=======
        Bind.factory((i) => ForgotPasswordViewModel()),
        Bind.factory((i) => ForgotPasswordUseCase()),
        Bind.factory<IForgotPassword>((i) => ForgotPasswordRepository()),
        Bind.factory((i) => JobLocalizationViewModel()),
        Bind.factory((i) => JobLocalizationUseCase()),
        Bind.factory<IJobLocalization>((i) => JobLocalizationRepository()),
>>>>>>> Stashed changes
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, __) => const Onboarding(), children: []),
        ChildRoute('/login', child: (_, __) => const LoginPage(), children: []),
        ChildRoute('/signup',
            child: (_, __) => const SignUpPage(), children: []),
        ChildRoute('/forgotpswd',
            child: (_, __) => const ForgotPasswordPage(), children: []),
        ChildRoute('/job',
            child: (_, __) => const JobDetailsPage(), children: []),
        ChildRoute('/localization',
            child: (_, __) => const JobLocalizationPage(
                  title: 'local',
                  id: 1,
                ),
            children: []),
        ChildRoute('/home', child: (_, __) => const homePage(), children: []),
      ];
}
