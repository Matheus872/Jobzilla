import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../../../theme.dart';
import '../../viewmodel/login_viewmodel.dart';
import 'package:localization/localization.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  Widget get _headerImage => Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(20, 20, 20, 10),
        child: Container(
          child: Image.asset(
            'lib/assets/images/zilla.png',
          ),
        ),
      );

  Widget get _userForm => Column(children: [
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
          child: _emailTextField,
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(30, 15, 30, 15),
          child: _passwordTextField,
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
          child: _loginButton,
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
          child: Row(
            children: [
              _createAccountLabel,
              _createAccountButton,
            ],
          ),
        ),
        Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
            child: _forgotPasswordButton)
        //ElevatedButton(onPressed: onPressed, child: child)
      ]);
  Widget get _emailTextField => TextFormField(
        obscureText: false,
        style: getTheme().textTheme.bodyText2,
        textAlign: TextAlign.start,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'username_hint'.i18n(),
          hintStyle: getTheme().textTheme.bodyText2,
          filled: true,
          fillColor: const Color(0xFF14181B),
          enabledBorder: UnderlineInputBorder(
            borderSide: const BorderSide(
              color: AppColors.dark_foreground,
              width: 20,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: const BorderSide(color: AppColors.black, width: 20),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      );
  Widget get _passwordTextField => TextFormField(
        obscureText: true,
        //TODO: Password visibility with controller
        style: getTheme().textTheme.bodyText2,
        textAlign: TextAlign.start,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'password_hint'.i18n(),
          hintStyle: getTheme().textTheme.bodyText2,
          filled: true,
          fillColor: const Color(0xFF14181B),
          enabledBorder: UnderlineInputBorder(
            borderSide: const BorderSide(
              color: AppColors.dark_foreground,
              width: 20,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: const BorderSide(color: AppColors.black, width: 20),
            borderRadius: BorderRadius.circular(20),
          ),
          suffixIcon: InkWell(
            child: Icon(
              Icons.visibility_off_outlined,
              color: AppColors.dark_secondaryText,
              size: 22,
            ),
          ),
        ),
      );
  Widget get _loginButton => ElevatedButton(
        child: Text('login'.i18n()),
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          textStyle: getTheme().textTheme.subtitle2,
          primary: getTheme().colorScheme.primary,
          fixedSize: const Size(300, 50),
          shape: const StadiumBorder(),
        ),
      );
  Widget get _createAccountLabel => Text(
        'create_account_label'.i18n(),
        style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 14,
            color: AppColors.dark_secondaryText),
      );
  Widget get _createAccountButton => TextButton(
      onPressed: () {},
      child: Text(
        'create_account'.i18n(),
        style: const TextStyle(
            fontFamily: 'Poppins', fontSize: 14, color: AppColors.white),
      ));
  Widget get _forgotPasswordButton => TextButton(
      onPressed: () {},
      child: Text(
        'forgot_password'.i18n(),
        style: const TextStyle(
            fontFamily: 'Poppins', fontSize: 14, color: AppColors.white),
      ));

  Widget get _buttonCompanies => ElevatedButton(
      child: Text('JobZilla for Companies'),
      onPressed: () {},
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(AppColors.dark_foreground),
          padding: MaterialStateProperty.all(EdgeInsets.all(5)),
          textStyle: MaterialStateProperty.all(getTheme().textTheme.overline)));

  Widget get _baseboardImage => Container(
      width: 400,
      height: 150,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("lib/assets/images/vetror.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: getTheme().colorScheme.background,
      body: SingleChildScrollView(
        child: SafeArea(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                _headerImage,
                _userForm,
                _baseboardImage,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
