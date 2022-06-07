import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../theme.dart';
import '../../viewmodel/login_viewmodel.dart';
import 'package:localization/localization.dart';
import 'dart:async';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginViewModel> {
  final _viewModel = Modular.get<LoginViewModel>();
  late ThemeData _theme;
  late bool darkModeOn;
  final _usernameTextFieldController = TextEditingController();
  final _passwordTextFieldController = TextEditingController();
  bool _passwordVisibility = false;

  void _login() {
    _viewModel.login();
  }

  void _signUp() {
    Modular.to.navigate('/signup');
  }

  void _forgotPassword() {
    Modular.to.navigate('/forgotpswd');
  }

  Widget get _headerImage => darkModeOn
      ? Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0, 40, 0, 40),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width * 0.8,
            child: Image.asset(
              'lib/assets/images/logo.png',
              fit: BoxFit.cover,
            ),
          ),
        )
      : Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0, 40, 0, 40),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width * 0.8,
            child: Image.asset(
              'lib/assets/images/logo_light.png',
            ),
          ),
        );

  Widget get _userForm => SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Column(children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
            child: _emailTextField,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 15),
            child: _passwordTextField,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
            child: _loginButton,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 10, 0),
            child: Row(
              children: [
                _createAccountLabel,
                _createAccountButton,
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 10, 0),
              child: _forgotPasswordButton)
        ]),
      );
  Widget get _emailTextField => TextFormField(
        onChanged: (value) {
          _viewModel.username = value;
        },
        enabled: !_viewModel.isLoading,
        obscureText: false,
        style: _theme.textTheme.bodyText2,
        textAlign: TextAlign.start,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'username_hint'.i18n(),
          hintStyle: _theme.textTheme.bodyText2,
          filled: true,
          fillColor: _theme.colorScheme.onBackground,
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: _theme.colorScheme.onBackground,
              width: 20,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: _theme.colorScheme.primaryContainer, width: 20),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      );
  Widget get _passwordTextField => TextFormField(
        onChanged: (value) {
          _viewModel.password = value;
        },
        enabled: !_viewModel.isLoading,
        obscureText: !_passwordVisibility,
        controller: _passwordTextFieldController,
        style: ThemeData().textTheme.bodyText2,
        textAlign: TextAlign.start,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'password_hint'.i18n(),
          hintStyle: _theme.textTheme.bodyText2,
          filled: true,
          fillColor: _theme.colorScheme.onBackground,
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: _theme.colorScheme.onBackground,
              width: 20,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: _theme.colorScheme.primaryContainer, width: 20),
            borderRadius: BorderRadius.circular(20),
          ),
          suffixIcon: InkWell(
            onTap: () => setState(
              () => _passwordVisibility = !_passwordVisibility,
            ),
            child: Icon(
              _passwordVisibility
                  ? Icons.visibility_outlined
                  : Icons.visibility_off_outlined,
              color: AppColors.dark_secondaryText,
              size: 22,
            ),
          ),
        ),
      );
  Widget get _loginButton => ElevatedButton(
        child: Text('login'.i18n()),
        onPressed: () {
          FocusScope.of(context).unfocus();
          _login();
        },
        style: ElevatedButton.styleFrom(
          textStyle: _theme.textTheme.subtitle2,
          primary: _theme.colorScheme.primary,
          fixedSize: const Size(320, 50),
          shape: const StadiumBorder(),
        ),
      );
  Widget get _createAccountLabel => Text(
        'create_account_label'.i18n(),
        style: _theme.textTheme.overline,
      );
  Widget get _createAccountButton => TextButton(
      onPressed: () {
        _signUp();
      },
      child:
          Text('create_account'.i18n(), style: _theme.textTheme.labelMedium));
  Widget get _forgotPasswordButton => TextButton(
      onPressed: () {
        _forgotPassword();
      },
      child:
          Text('forgot_password'.i18n(), style: _theme.textTheme.labelMedium));

  Widget get _buttonCompanies => ElevatedButton(
      child: Text('JobZilla for Companies'),
      onPressed: () {},
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(AppColors.dark_foreground),
          padding: MaterialStateProperty.all(EdgeInsets.all(5)),
          textStyle: MaterialStateProperty.all(_theme.textTheme.overline)));

  Widget get _baseboardImage => darkModeOn
      ? SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            'lib/assets/images/launchScreenBottonImage.png',
          ),
        )
      : SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            'lib/assets/images/launchScreenBottonImage_light.png',
          ),
        );

  @override
  Widget build(BuildContext context) {
    _theme = Theme.of(context);
    darkModeOn = _theme.brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: _theme.colorScheme.background,
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: SafeArea(
          child: GestureDetector(
            onTap: () {
              FocusScopeNode currentFocus = FocusScope.of(context);
              if (!currentFocus.hasPrimaryFocus) {
                currentFocus.unfocus();
              }
            },
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
