import 'package:basearch/src/features/auth/presentation/view/page/ForgotPassword.dart';
import 'package:basearch/src/features/auth/presentation/view/page/changePassword_page.dart';
import 'package:basearch/src/features/auth/presentation/view/page/createUser_page.dart';
import 'package:basearch/src/features/auth/presentation/view/page/LoginPage.dart';
import 'package:basearch/src/features/onboarding/presentation/page/onboarding_welcome.dart';
import 'package:basearch/src/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app_module.dart';
import 'app_widget.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = getTheme();

    return const MaterialApp(
      home: LoginPage(),

    );
  }
}
