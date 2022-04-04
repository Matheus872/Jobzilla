import 'package:basearch/src/features/auth/presentation/view/page/createUser_page.dart';
import 'package:basearch/src/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app_module.dart';
import 'app_widget.dart';

void main() {
  runApp(
    ModularApp(module: AppModule(), child: const AppWidget()),
  );
}
