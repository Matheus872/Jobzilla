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
  late ThemeData _theme;
  bool darkModeOn = false;
  final _viewModel = Modular.get<SignUpViewModel>();

  final _emailTextFieldController = TextEditingController();
  final _passwordTextFieldController = TextEditingController();
  bool _passwordVisibility = false;
  bool _passwordConfirmationVisibility = false;

  Widget get _headerImage => darkModeOn
      ? Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width * 0.8,
            child: Image.asset(
              'lib/assets/images/logo.png',
              fit: BoxFit.cover,
            ),
          ),
        )
      : Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
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
            child: _usernameTextField,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
            child: _emailTextField,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
            child: _choosePasswordTextField,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 15),
            child: _confirmPasswordTextField,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
            child: _createAccountButton,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 10, 0),
                  child: _haveAccountLabel,
                ),
                _haveAccountButton,
              ],
            ),
          ),
        ]),
      );

  Widget get _usernameTextField => TextFormField(
        obscureText: false,
        style: _theme.textTheme.bodyText2,
        textAlign: TextAlign.start,
        keyboardType: TextInputType.name,
        onChanged: (value) => _viewModel.username = value,
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

  Widget get _emailTextField => TextFormField(
        obscureText: false,
        style: _theme.textTheme.bodyText2,
        textAlign: TextAlign.start,
        keyboardType: TextInputType.emailAddress,
        onChanged: (value) => _viewModel.email = value,
        decoration: InputDecoration(
          hintText: 'email_hint'.i18n(),
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
          textStyle: _theme.textTheme.subtitle2,
          primary: _theme.colorScheme.primary,
          fixedSize: const Size(320, 50),
          shape: const StadiumBorder(),
        ),
      );
  Widget get _haveAccountLabel => Text(
        'have_account_label'.i18n(),
        style: _theme.textTheme.overline,
      );
  Widget get _haveAccountButton => TextButton(
      onPressed: () {
        Modular.to.navigate('/login');
      },
      child: Text(
        'have_account'.i18n(),
        style: _theme.textTheme.labelMedium,
      ));

  Widget get _baseboardImage => darkModeOn
      ? SizedBox(
          height: MediaQuery.of(context).size.height * 0.27,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            'lib/assets/images/launchScreenBottonImage.png',
          ),
        )
      : SizedBox(
          height: MediaQuery.of(context).size.height * 0.27,
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
        //physics: NeverScrollableScrollPhysics(),
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
