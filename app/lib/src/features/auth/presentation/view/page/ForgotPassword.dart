import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:localization/localization.dart';

import '../../viewmodel/login_viewmodel.dart';

import 'package:basearch/src/theme.dart';


class ForgotPassword extends StatefulWidget{
    const ForgotPassword({Key? key}) : super(key: key);
    @override
    State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword>{

    Widget get _padding => const Padding(
              padding: EdgeInsets.all(20.0),
            );

    Widget get _decoration => SizedBox(
      width: 400.0,
      height: 220.0,
      child: Card(
        child: Text('  send_email'.i18n(),
            style: const TextStyle(
              fontSize: 30,
              color: AppColors.dark_background,
            ),
          ),
        color: AppColors.dark_accent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
          ),
       ),
    );
    
     @override
     Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.light_primaryDark,
          toolbarHeight: 180,
          title: const Text('Alterar minha senha',
            style: TextStyle(
              color: AppColors.light_divider, 
              fontSize: 35,
            ),
          ),
        ),
      body: SingleChildScrollView(
        child: Container(
          color: AppColors.light_background,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children:  [
              _padding,
              _decoration,
            ],
          ),
        ),
      ),
    );
  }
}