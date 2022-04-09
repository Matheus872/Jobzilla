import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../viewmodel/login_viewmodel.dart';

import 'package:basearch/src/theme.dart';


class ForgotPassword extends StatefulWidget{
    const ForgotPassword({Key? key}) : super(key: key);
    @override
    State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword>{

    Widget get _padding => const Padding(
              padding: EdgeInsets.all(10.0),
            );

    Widget get _forgotpasswordTextField =>
            const Text('', 
              style: TextStyle(
              color: AppColors.dark_background,
              fontSize: 20
            ),
          );
    
     @override
     Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.light_primaryDark,
          toolbarHeight: 200,
          title: const Text('Alterar minha senha',
            style: TextStyle(
              color: AppColors.light_divider, 
              fontSize: 35,
            ),
          ),
        ),
      body: Container(
        color: AppColors.light_background,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Container(decoration: const BoxDecoration(
              color: AppColors.dark_primary,
              shape: BoxShape.circle,
              
            ),child: const Center(
              child: Text(
                'O link para redefinir sua senha foi enviado para o seu e-mail cadastrado.'
             'Favor verificar a sua caixa de entrada.',
                style: TextStyle(
                  fontSize: 40,
                  wordSpacing: 0,
                  fontWeight: FontWeight.bold,
                  color: AppColors.dark_background,
                  
                ),
              ),
            ),),
        ],
        ),
      ),
      );
    }
}