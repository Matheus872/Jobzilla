import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../../../theme.dart';
import '../../viewmodel/login_viewmodel.dart';
import 'package:localization/localization.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState
    extends ModularState<ForgotPasswordPage, LoginViewModel> {
  late ThemeData _theme;
  bool darkModeOn = false;

  Widget get _userForm => SizedBox(
        height: MediaQuery.of(context).size.height * 0.66,
        width: MediaQuery.of(context).size.width * 0.8,
        child: Column(
          children: [
            _emailTextField,
            _sendLinkButton,
          ],
        ),
      );

  Widget get _emailTextField => Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0, 80, 0, 20),
        child: TextFormField(
          obscureText: false,
          style: _theme.textTheme.bodyText2,
          textAlign: TextAlign.start,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: 'recovery_email_hint'.i18n(),
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
        ),
      );

  Widget get _sendLinkButton => Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
        child: ElevatedButton(
          child: Text('send_reset_link'.i18n()),
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            textStyle: _theme.textTheme.subtitle2,
            primary: _theme.colorScheme.primary,
            fixedSize: const Size(320, 50),
            shape: const StadiumBorder(),
          ),
        ),
      );

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
      appBar: AppBar(
        backgroundColor: _theme.colorScheme.background,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            Modular.to.navigate('/login');
          },
          child: Icon(
            Icons.chevron_left_rounded,
            color: _theme.colorScheme.primaryContainer,
            size: 32,
          ),
        ),
        title: Text(
          'forgot_password_title'.i18n(),
          style: _theme.textTheme.subtitle2,
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
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
