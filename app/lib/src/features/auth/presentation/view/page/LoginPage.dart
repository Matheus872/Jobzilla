import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../../../theme.dart';
import '../../viewmodel/login_viewmodel.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);


  Widget get _headerImage => Expanded(
    flex: 8,
    child: Image.asset(
      'lib/assets/images/zilla.png',
    )
  );

  Widget get _userForm => Expanded(
    flex: 10,
    child: Column(children: [
      Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(25, 0, 25, 0),
        child: _emailTextField,
      ),
      Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(25, 20, 25, 0),
        child: _passwordTextField,
      ),
      //ElevatedButton(onPressed: onPressed, child: child),     
      Padding(padding: const EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0), child:
        Row(
          children: [
            _createAccountLabel,
            _createAccountButton,
          ],
          ),
      ),
      Padding(padding: const EdgeInsetsDirectional.fromSTEB(30, 25, 30, 0),
        child: _forgotPasswordButton)
        //TextButton(onPressed: onPressed, child: child),
        //ElevatedButton(onPressed: onPressed, child: child)
    ]),
  );
  Widget get _emailTextField => TextFormField(
    obscureText: false,
    style: getTheme().textTheme.bodyText2,
    textAlign: TextAlign.start,
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
      hintText: 'Email Adress',
      hintStyle:
        getTheme().textTheme.bodyText2,
        filled: true,
        fillColor: const Color(0xFF14181B),
        enabledBorder: UnderlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.dark_foreground,
            width: 20,
          ),
          borderRadius:
            BorderRadius.circular(20),
          ),
          focusedBorder: UnderlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.black,
            width: 20
          ),
          borderRadius:
            BorderRadius.circular(20),
          ),
    ),
  );
  Widget get _passwordTextField => TextFormField(
    obscureText: false,
    style: getTheme().textTheme.bodyText2,
    textAlign: TextAlign.start,
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
      hintText: 'Password',
      hintStyle:
        getTheme().textTheme.bodyText2,
        filled: true,
        fillColor:const Color(0xFF14181B),
        enabledBorder: UnderlineInputBorder(
          borderSide: const BorderSide(
          color: AppColors.dark_foreground,
          width: 20,
        ),
        borderRadius:
          BorderRadius.circular(20),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.black,
            width: 20
          ),
          borderRadius:
            BorderRadius.circular(20),
          ),
        ),
  );
  Widget get _createAccountLabel => Text('Don\'t have an account?', style: TextStyle(
    fontFamily: 'Poppins',
    fontSize: 14,
    color: AppColors.dark_secondaryText
    ),
  );
  Widget get _createAccountButton => TextButton(onPressed: (){}, child:
    const Text('Create account', style: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 14,
        color: AppColors.white
      ),
    )
  );
  Widget get _forgotPasswordButton => TextButton(onPressed: (){}, child:
    const Text('Reset Password', style: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 14,
        color: AppColors.white
      ),
    )
  );
  
  Widget get _buttonCompanies => ElevatedButton(
    child: Text('JobZilla for Companies'),
    onPressed: () {},
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(AppColors.dark_foreground),
      padding: MaterialStateProperty.all(EdgeInsets.all(5)),
      textStyle: MaterialStateProperty.all(getTheme().textTheme.overline)
    )
  );

  Widget get _baseboardImage =>Expanded(
    flex: 5,
    child: Container(
    width: double.infinity,
    height: double.infinity,
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage(
          "lib/assets/images/vetror.png"),
        fit: BoxFit.cover,
      ),
    ),
    child: null),
  );

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: getTheme().colorScheme.background,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              _headerImage,
              _userForm,
              _baseboardImage,
            ],
          ),
        ),
      ),
    );
  }
}