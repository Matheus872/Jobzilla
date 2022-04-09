// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:localization/localization.dart';

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
    
    Widget get _newpasswordTextField => Text('new_password'.i18n(), 
              style: const TextStyle(
              color: AppColors.dark_background,
              fontSize: 25
            ),
          );

    Widget get _newpasswordDecoration => TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'newpassword_hint'.i18n(), 
                hintStyle: const TextStyle(
                  fontSize: 20,
                  color: AppColors.light_primaryDark,
                ),
                icon: const Icon(
                  Icons.lock, 
                  color:AppColors.dark_primaryLight
                ),
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
              color: AppColors.light_accent,
              width: 2,
            ),
          ),
          enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
              color: AppColors.light_primaryDark,
              width: 2,
                ),
              ),
            ),
          );

    Widget get _confirmpasswordTextField => Text('confirm_new_password'.i18n(), 
              style: const TextStyle(
              color: AppColors.dark_background,
              fontSize: 25
            ),
          );

    Widget get _confirmpasswordDecoration => TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'confirmnewpassword_hint'.i18n(), 
                hintStyle: const TextStyle(
                  fontSize: 20,
                  color: AppColors.light_primaryDark,
                ),
                icon: const Icon(
                  Icons.lock, 
                  color:AppColors.dark_primaryLight
                ),
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
              color: AppColors.light_accent,
              width: 2,
            ),
          ),
          enabledBorder: const UnderlineInputBorder(
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
                  child: Text('save'.i18n(),
                    style: const TextStyle(
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
          title: Text('change_password'.i18n(),
            style: const TextStyle(
              color: AppColors.light_divider, 
              fontSize: 35,
            ),
          ),
        ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:  [
                _padding,
                _padding,
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
        ),
      ),
    );
  }
}