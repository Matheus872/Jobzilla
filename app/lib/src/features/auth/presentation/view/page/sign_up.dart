import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../../../theme.dart';
import '../../viewmodel/login_viewmodel.dart';
import 'package:localization/localization.dart';

import '../../viewmodel/sign_up_viewmodel.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends ModularState<SignUpPage, SignUpViewModel> {
  late ThemeData _theme = getTheme();
  final _viewModel = Modular.get<SignUpViewModel>();

  final _usernameTextFieldController = TextEditingController();
  final _passwordTextFieldController = TextEditingController();
  bool _passwordVisibility = false;
  bool _passwordConfirmationVisibility = false;

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
          padding: const EdgeInsetsDirectional.fromSTEB(30, 15, 30, 0),
          child: _choosePasswordTextField,
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(30, 15, 30, 15),
          child: _confirmPasswordTextField,
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
          child: _createAccountButton,
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                child: _haveAccountLabel,
              ),
              _haveAccountButton,
            ],
          ),
        ),
        //ElevatedButton(onPressed: onPressed, child: child)
      ]);
  Widget get _emailTextField => TextFormField(
        obscureText: false,
        style: _theme.textTheme.bodyText2,
        textAlign: TextAlign.start,
        keyboardType: TextInputType.emailAddress,
        onChanged: (value) => _viewModel.username = value,
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
  Widget get _choosePasswordTextField => TextFormField(
        obscureText: !_passwordVisibility,
        style: _theme.textTheme.bodyText2,
        textAlign: TextAlign.start,
        keyboardType: TextInputType.emailAddress,
        onChanged: (value) => _viewModel.password = value,
        decoration: InputDecoration(
          hintText: 'choose_password_hint'.i18n(),
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
  Widget get _confirmPasswordTextField => TextFormField(
        obscureText: !_passwordConfirmationVisibility,
        style: _theme.textTheme.bodyText2,
        textAlign: TextAlign.start,
        keyboardType: TextInputType.emailAddress,
        onChanged: (value) => _viewModel.passwordConfirmation = value,
        decoration: InputDecoration(
          hintText: 'confirm_password_hint'.i18n(),
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
            onTap: () => setState(
              () => _passwordConfirmationVisibility =
                  !_passwordConfirmationVisibility,
            ),
            child: Icon(
              _passwordConfirmationVisibility
                  ? Icons.visibility_outlined
                  : Icons.visibility_off_outlined,
              color: AppColors.dark_secondaryText,
              size: 22,
            ),
          ),
        ),
      );
  Widget get _createAccountButton => ElevatedButton(
        child: Text('create_account'.i18n()),
        onPressed: () {
          FocusScope.of(context).unfocus();
          _viewModel.signUp();
        },
        style: ElevatedButton.styleFrom(
          textStyle: getTheme().textTheme.subtitle2,
          primary: _theme.colorScheme.primary,
          fixedSize: const Size(300, 50),
          shape: const StadiumBorder(),
        ),
      );
  Widget get _haveAccountLabel => Text(
        'have_account_label'.i18n(),
        style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 14,
            color: AppColors.dark_secondaryText),
      );
  Widget get _haveAccountButton => TextButton(
      onPressed: () {
        Modular.to.navigate('/login');
      },
      child: Text(
        'have_account'.i18n(),
        style: const TextStyle(
            fontFamily: 'Poppins', fontSize: 14, color: AppColors.white),
      ));

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
