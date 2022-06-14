import 'package:basearch/src/features/auth/domain/repository/forgot_password_interface.dart';
import 'package:basearch/src/features/auth/domain/repository/sign_up_interface.dart';
import 'package:basearch/src/features/auth/presentation/view/page/company_home.dart';
import 'package:basearch/src/features/auth/presentation/view/page/profile_details.dart';
import 'package:basearch/src/features/auth/presentation/view/page/register_job.dart';
import 'package:basearch/src/features/auth/presentation/view/page/sign_up.dart';
import 'package:basearch/src/features/auth/presentation/view/page/forgot_password.dart';
import 'package:basearch/src/features/auth/presentation/view/page/home.dart';
import 'package:basearch/src/features/auth/presentation/view/page/job_details.dart';
import 'package:basearch/src/features/auth/presentation/view/page/job_localization.dart';
import 'package:basearch/src/features/auth/presentation/viewmodel/forgot_password_viewmodel.dart';
import 'package:basearch/src/features/auth/presentation/viewmodel/profile_details_viewmodel.dart';
import 'package:basearch/src/features/auth/presentation/viewmodel/register_job_viewmodel.dart';
import 'package:basearch/src/features/auth/presentation/viewmodel/sign_up_viewmodel.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../onboarding/presentation/page/onboard.dart';
import 'data/repository/forgot_password_repository.dart';
import 'data/repository/login_repository.dart';
import 'data/repository/sign_up_repository.dart';
import 'domain/repository/login_interface.dart';
import 'domain/usecase/forgot_password_usecase.dart';
import 'domain/usecase/login_usecase.dart';
import 'domain/usecase/profile_details_usecase.dart';
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
        Bind.factory((i) => ForgotPasswordViewModel()),
        Bind.factory((i) => ForgotPasswordUseCase()),
        Bind.factory<IForgotPassword>((i) => ForgotPasswordRepository()),
        Bind.factory((i) => ProfileDetailsViewModel()),
        Bind.factory((i) => ProfileDetailsUseCase()),
        Bind.factory((i) => RegisterJobViewModel()),
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
                ),
            children: []),
        ChildRoute('/home', child: (_, __) => const homePage(), children: []),
        ChildRoute('/companyhome',
            child: (_, __) => const company_homePage(), children: []),
        ChildRoute('/registerjob',
            child: (_, __) => const RegisterJob(), children: []),
        ChildRoute('/profile',
            child: (_, __) => const ProfileDetailsPage(), children: []),
      ];
}
