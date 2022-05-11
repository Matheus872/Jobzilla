import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../../../theme.dart';
import '../../viewmodel/forgot_password_viewmodel.dart';
import 'package:localization/localization.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState
    extends ModularState<ForgotPasswordPage, ForgotPasswordViewModel> {
  late ThemeData _theme = getTheme();
  final _viewModel = Modular.get<ForgotPasswordViewModel>();
  bool _passwordVisibility = false;
  bool _passwordConfirmationVisibility = false;
  bool codeSended = false;
  bool _pinVerified = false;

  TextEditingController textEditingController = TextEditingController();
  StreamController<ErrorAnimationType>? errorController;
  bool hasError = false;
  String pinErrorString = "";

  bool emailHasError = false;
  String emailErrorString = "";

  final formKey = GlobalKey<FormState>();
  final pinFormKey = GlobalKey<FormState>();

  @override
  void initState() {
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  void dispose() {
    errorController!.close();

    super.dispose();
  }

  void _sendVerificationCode() {
    _viewModel.sendVerificationCode();
  }

  void _resetPassword() {
    _viewModel.resetPassword();
  }

  Widget buildScreens() {
    if (_pinVerified) {
      return _resetPasswordScreen;
    } else {
      return codeSended ? _pinVerificationScreen : _sendPinScreen;
    }
  }

  PreferredSizeWidget get _appBar => AppBar(
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
      );

  Widget get _sendPinScreen => SingleChildScrollView(
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
                _emailTextField,
                _sendLinkButton,
                _baseboardImage,
              ],
            ),
          ),
        ),
      );
  Widget get _emailTextField => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(30, 25, 30, 0),
            child: TextFormField(
              obscureText: false,
              style: _theme.textTheme.bodyText2,
              textAlign: TextAlign.start,
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) => _viewModel.email = value,
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
                  borderSide:
                      const BorderSide(color: AppColors.black, width: 20),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(45, 10, 10, 40),
            child: Text(
              emailHasError ? emailErrorString : "",
              style: const TextStyle(
                color: Colors.red,
                fontSize: 12,
              ),
            ),
          ),
        ],
      );

  Widget get _sendLinkButton => Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 230),
        child: ElevatedButton(
          child: Text('send_reset_link'.i18n()),
          onPressed: () {
            FocusScope.of(context).unfocus();
            _viewModel.validateEmail();
            if (_viewModel.error.hasErrors) {
              emailErrorString = _viewModel.validateEmailMessage();
              setState(() => emailHasError = true);
            } else {
              emailHasError = false;
              _sendVerificationCode();
              codeSended = true;
            }

            /*  _viewModel.validateEmail();
            if (_viewModel.error.hasErrors) {}
            _sendVerificationCode();
            codeSended = true;
            build(context); */
          },
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
                image:
                    AssetImage("lib/assets/images/launchScreenBottonImage.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      );

  Widget get _pinVerificationScreen => SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: <Widget>[
            const SizedBox(height: 30),
            SizedBox(
              height: MediaQuery.of(context).size.height / 7,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset('lib/assets/images/godzilla.png'),
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'email_verification'.i18n(),
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: AppColors.white),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 8),
              child: RichText(
                text: TextSpan(
                    text: "enter_code_sent".i18n(),
                    children: [
                      TextSpan(
                          text: _viewModel.email,
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15)),
                    ],
                    style: const TextStyle(color: Colors.white, fontSize: 15)),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Form(
              key: pinFormKey,
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  child: PinCodeTextField(
                    appContext: context,
                    pastedTextStyle: TextStyle(
                      color: Colors.green.shade600,
                      fontWeight: FontWeight.bold,
                    ),
                    length: 6,
                    blinkWhenObscuring: true,
                    animationType: AnimationType.fade,
                    validator: (v) {
                      if (v!.length < 6) {
                        return 'fill_properly'.i18n();
                      } else {
                        return null;
                      }
                    },
                    pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(5),
                        fieldHeight: 50,
                        fieldWidth: 40,
                        activeFillColor: AppColors.dark_primary,
                        inactiveFillColor: AppColors.white),
                    cursorColor: Colors.black,
                    animationDuration: const Duration(milliseconds: 300),
                    enableActiveFill: true,
                    errorAnimationController: errorController,
                    controller: textEditingController,
                    keyboardType: TextInputType.number,
                    boxShadows: const [
                      BoxShadow(
                        offset: Offset(0, 1),
                        color: Colors.black12,
                        blurRadius: 10,
                      )
                    ],
                    onChanged: (value) {
                      print(value);
                      setState(() {
                        _viewModel.pinCode = value;
                        pinErrorString = "";
                      });
                    },
                    beforeTextPaste: (text) {
                      debugPrint("Allowing to paste $text");
                      return true;
                    },
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                hasError ? pinErrorString : "",
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 12,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "did_not_receive_code".i18n(),
                  style: const TextStyle(color: Colors.white, fontSize: 15),
                ),
                TextButton(
                  onPressed: () {}, // => snackBar("OTP resend!!"),
                  child: Text(
                    "resend_code".i18n(),
                    style: const TextStyle(
                        color: Color(0xFF91D3B3),
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20, 10, 20, 20),
              child: ElevatedButton(
                child: Text('Verify'.i18n()),
                onPressed: () {
                  FocusScope.of(context).unfocus();
                  pinFormKey.currentState!.validate();
                  _viewModel.validatePinCode();
                  if (_viewModel.error.hasErrorsOnPinCode) {
                    errorController!.add(ErrorAnimationType.shake);
                    pinErrorString = _viewModel.validatePinCodeMessage();
                    setState(() => hasError = true);
                  } else {
                    _pinVerified = true;
                    hasError = false;
                  }
                },
                style: ElevatedButton.styleFrom(
                  textStyle: getTheme().textTheme.subtitle2,
                  primary: _theme.colorScheme.primary,
                  fixedSize: const Size(300, 50),
                  shape: const StadiumBorder(),
                ),
              ),
            ),
          ],
        ),
      );

  Widget get _resetPasswordScreen => SingleChildScrollView(
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
                _userForm,
                _baseboardImage,
              ],
            ),
          ),
        ),
      );
  Widget get _userForm => Column(children: [
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(30, 15, 30, 0),
          child: _resetPasswordScreenTitle,
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
          child: _resetPasswordButton,
        ),
      ]);
  Widget get _resetPasswordScreenTitle => Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(12, 42, 12, 50),
        child: Text(
          'set_new_password'.i18n(),
          style: const TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
      );
  Widget get _choosePasswordTextField => TextFormField(
        obscureText: !_passwordVisibility,
        style: _theme.textTheme.bodyText2,
        textAlign: TextAlign.start,
        keyboardType: TextInputType.emailAddress,
        onChanged: (value) => _viewModel.newPassword = value,
        decoration: InputDecoration(
          hintText: 'choose_new_password_hint'.i18n(),
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
        onChanged: (value) => _viewModel.newPasswordConfirmation = value,
        decoration: InputDecoration(
          hintText: 'confirm_new_password_hint'.i18n(),
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
  Widget get _resetPasswordButton => Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 80),
        child: ElevatedButton(
          child: Text('reset_password'.i18n()),
          onPressed: () {
            FocusScope.of(context).unfocus();
            _viewModel.resetPassword();
          },
          style: ElevatedButton.styleFrom(
            textStyle: getTheme().textTheme.subtitle2,
            primary: _theme.colorScheme.primary,
            fixedSize: const Size(300, 50),
            shape: const StadiumBorder(),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: _theme.colorScheme.background,
        appBar: _appBar,
        body: buildScreens());
  }
}
