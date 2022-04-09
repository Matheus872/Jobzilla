import 'package:basearch/src/features/auth/presentation/view/page/ForgotPassword.dart';
import 'package:basearch/src/features/auth/presentation/view/page/changePassword_page.dart';
import 'package:basearch/src/features/auth/presentation/view/page/SignUp.dart';
import 'package:basearch/src/features/auth/presentation/view/page/LoginPage.dart';
import 'package:basearch/src/features/onboarding/presentation/page/onboard.dart';
import 'package:basearch/src/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app_module.dart';
import 'app_widget.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(
    //const MyApp(),
  ModularApp(module: AppModule(), child: AppWidget()));
}