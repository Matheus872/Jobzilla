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
  late ThemeData _theme = getTheme();

  Widget get _emailTextField => Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(30, 25, 30, 20),
        child: TextFormField(
          obscureText: false,
          style: _theme.textTheme.bodyText2,
          textAlign: TextAlign.start,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: 'recovery_email_hint'.i18n(),
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
        ),
      );

  Widget get _sendLinkButton => Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 270),
        child: ElevatedButton(
          child: Text('send_reset_link'.i18n()),
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            textStyle: getTheme().textTheme.subtitle2,
            primary: _theme.colorScheme.primary,
            fixedSize: const Size(300, 50),
            shape: const StadiumBorder(),
          ),
        ),
      );

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
      appBar: AppBar(
        backgroundColor: _theme.colorScheme.background,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            Modular.to.navigate('/login');
          },
          child: const Icon(
            Icons.chevron_left_rounded,
            color: Colors.white,
            size: 32,
          ),
        ),
        title: Text(
          'forgot_password_title'.i18n(),
          style: getTheme().textTheme.subtitle2,
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
                _emailTextField,
                _sendLinkButton,
                _baseboardImage,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
