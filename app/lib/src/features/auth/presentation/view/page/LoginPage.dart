import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../../../theme.dart';
import '../../viewmodel/login_viewmodel.dart';
import 'package:localization/localization.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginViewModel> {
  late ThemeData _theme = getTheme();

  Widget get _headerImage => Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(40, 20, 40, 10),
        child: Container(
          child: Image.asset(
            'lib/assets/images/logo.png',
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
        style: _theme.textTheme.bodyText2,
        textAlign: TextAlign.start,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'username_hint'.i18n(),
          hintStyle: _theme.textTheme.bodyText2,
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
        style: _theme.textTheme.bodyText2,
        textAlign: TextAlign.start,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'password_hint'.i18n(),
          hintStyle: _theme.textTheme.bodyText2,
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
        onPressed: () {
          Modular.to.navigate('/job');
        },
        style: ElevatedButton.styleFrom(
          textStyle: getTheme().textTheme.subtitle2,
          primary: _theme.colorScheme.primary,
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
      onPressed: () {
        Modular.to.navigate('/signup');
      },
      child: Text(
        'create_account'.i18n(),
        style: const TextStyle(
            fontFamily: 'Poppins', fontSize: 14, color: AppColors.white),
      ));
  Widget get _forgotPasswordButton => TextButton(
      onPressed: () {
        Modular.to.navigate('/forgotpswd');
      },
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
          textStyle: MaterialStateProperty.all(_theme.textTheme.overline)));

  Widget get _baseboardImage => Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
        child: Center(
          child: Container(
              width: 1125,
              height: 170,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      "lib/assets/images/launchScreenBottonImage.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: null),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _theme.colorScheme.background,
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
