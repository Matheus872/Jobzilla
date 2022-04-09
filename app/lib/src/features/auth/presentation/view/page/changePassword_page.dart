// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../viewmodel/login_viewmodel.dart';

import 'package:basearch/src/theme.dart';


class ChangePassword extends StatefulWidget{
    const ChangePassword({Key? key}) : super(key: key);
    @override
    State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword>{

    Widget get _padding => const Padding(
              padding: EdgeInsets.all(10.0),
            );
    
    Widget get _newpasswordTextField =>
            const Text('Digite a nova senha', 
              style: TextStyle(
              color: AppColors.dark_background,
              fontSize: 25
            ),
          );

    Widget get _newpasswordDecoration => const TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Informe a sua nova senha', 
                hintStyle: TextStyle(
                  fontSize: 20,
                  color: AppColors.light_primaryDark,
                ),
                icon: Icon(
                  Icons.lock, 
                  color:AppColors.dark_primaryLight
                ),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
              color: AppColors.light_accent,
              width: 2,
            ),
          ),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
              color: AppColors.light_primaryDark,
              width: 2,
                ),
              ),
            ),
          );

    Widget get _confirmpasswordTextField =>
            const Text('Confirme a nova senha', 
              style: TextStyle(
              color: AppColors.dark_background,
              fontSize: 25
            ),
          );

    
    Widget get _confirmpasswordDecoration => const TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Confirme a sua nova senha', 
                hintStyle: TextStyle(
                  fontSize: 20,
                  color: AppColors.light_primaryDark,
                ),
                icon: Icon(
                  Icons.lock, 
                  color:AppColors.dark_primaryLight
                ),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
              color: AppColors.light_accent,
              width: 2,
            ),
          ),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
              color: AppColors.light_primaryDark,
              width: 2,
                ),
              ),
            ),
          );

    Widget get _buttonPassword => ButtonTheme(
                height: 70.0,
                minWidth: 130.0,
                child: RaisedButton(
                  // ignore: avoid_print
                  onPressed: () => { },
                  shape: RoundedRectangleBorder(
                    borderRadius:BorderRadius.circular(20.0
                    )
                  ),
                  child: const Text('Salvar',
                    style: TextStyle(
                      color: AppColors.dark_divider, 
                      fontSize: 25
                      ),
                  ),
                  color: AppColors.dark_primaryLight,
                ),
              );      
    
    @override
     Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.light_primaryDark, 
          toolbarHeight: 200,
          title: const Text('Redefinir Senha',
            style: TextStyle(
              color: AppColors.light_divider, 
              fontSize: 35,
            ),
          ),
        ),
      body: Container(
        color: AppColors.light_background,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            _newpasswordTextField,
            _padding,
            _newpasswordDecoration,
            _padding,
            _padding,
            _confirmpasswordTextField,
            _padding,
            _confirmpasswordDecoration,
            _padding,
            _padding,
            _padding,
            _buttonPassword,
        ],
        ),
      ),
      );
    }
}