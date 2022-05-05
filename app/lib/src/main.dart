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
