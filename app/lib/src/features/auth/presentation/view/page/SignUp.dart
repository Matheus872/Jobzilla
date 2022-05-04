/* // ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:basearch/src/theme.dart';
import 'package:localization/localization.dart';

import '../../viewmodel/sign_up_viewmodel.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends ModularState<SignUpPage, SingnUpViewModel> {
  Widget get _padding => const Padding(
        padding: EdgeInsets.all(10.0),
      );

  Widget get _firstnameTextField => Text(
        'first_name'.i18n(),
        style: const TextStyle(
          color: AppColors.dark_background,
          fontSize: 20,
        ),
      );

  Widget get _firstnameDecoration => TextField(
        decoration: InputDecoration(
          hintText: 'firstname_hint'.i18n(),
          hintStyle: const TextStyle(
            fontSize: 20,
            color: AppColors.light_primaryDark,
          ),
          icon: const Icon(Icons.person, color: AppColors.dark_primaryLight),
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

  Widget get _lastnameTextField => Text(
        'last_name'.i18n(),
        style: const TextStyle(color: AppColors.dark_background, fontSize: 20),
      );

  Widget get _lastnameDecoration => TextField(
        decoration: InputDecoration(
          hintText: 'firstname_hint'.i18n(),
          hintStyle: const TextStyle(
            fontSize: 20,
            color: AppColors.light_primaryDark,
          ),
          icon: const Icon(Icons.check, color: AppColors.dark_primaryLight),
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

  Widget get _cpfTextField => Text(
        'cpf'.i18n(),
        style: const TextStyle(fontSize: 20),
      );

  Widget get _cpfDecoration => TextField(
        decoration: InputDecoration(
          hintText: 'cpf_hint'.i18n(),
          hintStyle: const TextStyle(
            fontSize: 20,
            color: AppColors.light_primaryDark,
          ),
          icon: const Icon(Icons.check, color: AppColors.dark_primaryLight),
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

  Widget get _birthdateTextField => const Text(
        'Data de Nascimento',
        style: TextStyle(color: AppColors.dark_background, fontSize: 20),
      );

  Widget get _birthDateDecoration => TextField(
        decoration: InputDecoration(
          hintText: 'birth_date'.i18n(),
          hintStyle: const TextStyle(
            fontSize: 20,
            color: AppColors.light_primaryDark,
          ),
          icon: const Icon(Icons.calendar_month,
              color: AppColors.dark_primaryLight),
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

  Widget get _genderTextField => Text(
        'gender'.i18n(),
        style: const TextStyle(color: AppColors.dark_background, fontSize: 20),
      );

  Widget get _genderDecoration => TextField(
        decoration: InputDecoration(
          hintText: 'gender_hint'.i18n(),
          hintStyle: const TextStyle(
            fontSize: 20,
            color: AppColors.light_primaryDark,
          ),
          icon: const Icon(
            Icons.check,
            color: AppColors.dark_primaryLight,
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

  Widget get _phoneTextField => Text(
        'phone'.i18n(),
        style: const TextStyle(
          color: AppColors.dark_background,
          fontSize: 20,
        ),
      );

  Widget get _phoneDecoration => TextField(
        decoration: InputDecoration(
          hintText: 'phone_hint'.i18n(),
          hintStyle: const TextStyle(
            fontSize: 20,
            color: AppColors.light_primaryDark,
          ),
          icon: const Icon(
            Icons.phone,
            color: AppColors.dark_primaryLight,
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

  Widget get _emailTextField => Text(
        'email'.i18n(),
        style: const TextStyle(
          color: AppColors.dark_background,
          fontSize: 20,
        ),
      );

  Widget get _emailDecoration => TextField(
        decoration: InputDecoration(
          hintText: 'email_hint'.i18n(),
          hintStyle: const TextStyle(
            fontSize: 20,
            color: AppColors.light_primaryDark,
          ),
          icon: const Icon(
            Icons.mail,
            color: AppColors.dark_primaryLight,
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

  Widget get _passwordTextField => Text(
        'password_hint'.i18n(),
        style: const TextStyle(color: AppColors.dark_background, fontSize: 20),
      );

  Widget get _passwordDecoration => TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'create_password_hint'.i18n(),
          hintStyle: const TextStyle(
            fontSize: 20,
            color: AppColors.light_primaryDark,
          ),
          icon: const Icon(Icons.lock, color: AppColors.dark_primaryLight),
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

  Widget get _confirmpasswordTextField => Text(
        'confirm_password'.i18n(),
        style: const TextStyle(color: AppColors.dark_background, fontSize: 20),
      );

  Widget get _confirmpasswordDecoration => TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'confirm_password_hint'.i18n(),
          hintStyle: const TextStyle(
            fontSize: 20,
            color: AppColors.light_primaryDark,
          ),
          icon: const Icon(Icons.lock, color: AppColors.dark_primaryLight),
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

  Widget get _buttonUser => ButtonTheme(
        height: 70.0,
        minWidth: 130.0,
        child: RaisedButton(
          // ignore: avoid_print
          onPressed: () => {},
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: Text(
            'save'.i18n(),
            style: const TextStyle(color: AppColors.dark_divider, fontSize: 25),
          ),
          color: AppColors.dark_primaryLight,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.light_primaryDark,
        title: Text(
          'create_user'.i18n(),
          style: const TextStyle(
            color: AppColors.light_divider,
            fontSize: 25,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _padding,
                _firstnameTextField,
                _firstnameDecoration,
                _padding,
                _lastnameTextField,
                _lastnameDecoration,
                _padding,
                _cpfTextField,
                _cpfDecoration,
                _padding,
                _birthdateTextField,
                _birthDateDecoration,
                _padding,
                _genderTextField,
                _genderDecoration,
                _padding,
                _phoneTextField,
                _phoneDecoration,
                _padding,
                _emailTextField,
                _emailDecoration,
                _padding,
                _passwordTextField,
                _passwordDecoration,
                _padding,
                _confirmpasswordTextField,
                _confirmpasswordDecoration,
                _padding,
                _padding,
                _padding,
                _buttonUser,
                _padding,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
 */