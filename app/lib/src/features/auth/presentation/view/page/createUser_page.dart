// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:basearch/src/theme.dart';
import 'package:localization/localization.dart';


import '../../viewmodel/login_viewmodel.dart';

class CreateUser extends StatefulWidget{
    const CreateUser({Key? key}) : super(key: key);
    @override
    State<CreateUser> createState() => _CreateUserState();
}

class _CreateUserState extends State<CreateUser>{

    Widget get _padding => const Padding(
              padding: EdgeInsets.all(10.0),
            );
    
    Widget get _firstnameTextField =>
             Text('first_name'.i18n(), 
              style: const TextStyle(
              color: AppColors.dark_background,
              fontSize: 20,
            ),
          );

    Widget get _firstnameDecoration => const TextField(
              decoration: InputDecoration(
                hintText: 'Informe o seu primeiro nome', 
                hintStyle: TextStyle(
                  fontSize: 20,
                  color: AppColors.light_primaryDark,
                ),
                icon: Icon(
                  Icons.person, 
                  color:AppColors.dark_primaryLight
                ),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
              color: AppColors.light_accent,
              width: 2,
            ),
          ),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
              color: AppColors.light_primaryDark,
              width: 2,
                ),
              ),
            ),
          );
            
    Widget get _lastnameTextField => const Text('Sobrenome', 
            style: TextStyle(
              color: AppColors.dark_background, 
              fontSize: 20
            ),
           );
    
    Widget get _lastnameDecoration => const TextField(
            decoration: InputDecoration(
              hintText: 'Informe o seu sobrenome', 
              hintStyle: TextStyle(
                fontSize: 20,
                color: AppColors.light_primaryDark,
              ),
              icon: Icon(
                Icons.check, 
                color:AppColors.dark_primaryLight
              ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.light_accent,
                width: 2,
              ),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.light_primaryDark,
                width: 2,
                ),
              ),
            ),
          );
          
    Widget get _cpfTextField => const Text('CPF', 
            style: TextStyle(
              fontSize: 20
            ),
           );

    Widget get _cpfDecoration => const TextField(
            decoration: InputDecoration(
              hintText: 'Informe o CPF',
              hintStyle: TextStyle(
                fontSize: 20,
                color: AppColors.light_primaryDark,
              ),
              icon: Icon(
                Icons.check, 
                color:AppColors.dark_primaryLight
              ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.light_accent,
                width: 2,
              ),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.light_primaryDark,
                width: 2,
              ),
            ),
            ),
          );
    
    Widget get _birthdateTextField => const Text('Data de Nascimento', 
            style: TextStyle(
              color: AppColors.dark_background, 
              fontSize: 20
            ),
          );

    Widget get _birthDateDecoration => const TextField(
            decoration: InputDecoration(
              hintText: 'Informe a data de nascimento', 
              hintStyle: TextStyle(
                fontSize: 20,
                color: AppColors.light_primaryDark,
              ),
            icon: Icon(
              Icons.calendar_month, 
              color:AppColors.dark_primaryLight
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.light_accent,
                width: 2,
              ),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.light_primaryDark,
                width: 2,
              ),
            ),
          ),
          );
    
    Widget get _genderTextField => const Text('Gênero', 
            style: TextStyle(
              color: AppColors.dark_background, 
              fontSize: 20
            ),
          );

    Widget get _genderDecoration => const TextField(
            decoration: InputDecoration(
              hintText: 'Informe o gênero',
              hintStyle: TextStyle(
                fontSize: 20,
                color: AppColors.light_primaryDark,
              ),
            icon: Icon(
              Icons.check, 
              color:AppColors.dark_primaryLight,
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
              color: AppColors.light_accent,
              width: 2,
            ),
          ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.light_primaryDark,
                width: 2,
              ),
            ),
            ),
          );

    Widget get _phoneTextField => const  Text('Telefone', 
            style: TextStyle(
              color: AppColors.dark_background, 
              fontSize: 20,
            ),
          );

    Widget get _phoneDecoration => const TextField(
            decoration: InputDecoration(
              hintText: 'Informe o seu telefone', 
              hintStyle: TextStyle(
                fontSize: 20,
                color: AppColors.light_primaryDark,
              ),
              icon: Icon(
                Icons.phone, 
                color:AppColors.dark_primaryLight,
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.light_accent,
                  width: 2,
                ),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                color: AppColors.light_primaryDark,
                width: 2,
                ),
              ),
            ),
          ); 

     Widget get _emailTextField => const  Text('E-mail', 
            style: TextStyle(
              color: AppColors.dark_background, 
              fontSize: 20,
            ),
          );

    Widget get _emailDecoration => const TextField(
            decoration: InputDecoration(
              hintText: 'Informe o seu e-mail', 
              hintStyle: TextStyle(
                fontSize: 20,
                color: AppColors.light_primaryDark,
              ),
              icon: Icon(
                Icons.mail, 
                color:AppColors.dark_primaryLight,
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.light_accent,
                  width: 2,
                ),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                color: AppColors.light_primaryDark,
                width: 2,
                ),
              ),
            ),
          ); 

    Widget get _passwordTextField =>
            const Text('Senha', 
              style: TextStyle(
              color: AppColors.dark_background,
              fontSize: 20
            ),
          );

    Widget get _passwordDecoration => const TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Informe a sua senha', 
                hintStyle: TextStyle(
                  fontSize: 20,
                  color: AppColors.light_primaryDark,
                ),
                icon: Icon(
                  Icons.lock, 
                  color:AppColors.dark_primaryLight
                ),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
              color: AppColors.light_accent,
              width: 2,
            ),
          ),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
              color: AppColors.light_primaryDark,
              width: 2,
                ),
              ),
            ),
          );

    Widget get _confirmpasswordTextField =>
            const Text('Confirmar Senha', 
              style: TextStyle(
              color: AppColors.dark_background,
              fontSize: 20
            ),
          );

    Widget get _confirmpasswordDecoration => const TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Confirme a sua senha', 
                hintStyle: TextStyle(
                  fontSize: 20,
                  color: AppColors.light_primaryDark,
                ),
                icon: Icon(
                  Icons.lock, 
                  color:AppColors.dark_primaryLight
                ),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
              color: AppColors.light_accent,
              width: 2,
            ),
          ),
          enabledBorder: UnderlineInputBorder(
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
                  onPressed: () => { },
                  shape: RoundedRectangleBorder(
                    borderRadius:BorderRadius.circular(20.0
                    )
                  ),
                  child: const Text('Salvar',
                    style: TextStyle(
                      color: AppColors.dark_divider, 
                      fontSize: 25
                      ),
                  ),
                  color: AppColors.dark_primaryLight,
                ),
              );

    @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.light_primaryDark,
          title: const Text('Cadastro',
            style: TextStyle(
              color: AppColors.light_divider, 
              fontSize: 25,
            ),
          ),
        ),
      body: Container(
        color: AppColors.light_background,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
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
        ],
        ),
      ),
      );
    }
}
