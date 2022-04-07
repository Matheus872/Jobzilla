import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:basearch/src/theme.dart';


import '../../viewmodel/login_viewmodel.dart';

class CreateUser extends StatefulWidget{
    const CreateUser({Key? key}) : super(key: key);
    @override
    State<CreateUser> createState() => _CreateUserState();
}

class _CreateUserState extends State<CreateUser>{
    
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
          children: const [
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            Text('Primeiro Nome', 
              style: TextStyle(
              color: AppColors.dark_background,
              fontSize: 20
            ),
          ),
            TextField(
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
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            ),
          Text('Sobrenome', 
            style: TextStyle(
              color: AppColors.dark_background, 
              fontSize: 20
            ),
           ),
          TextField(
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
          ),
          Padding(
            padding: EdgeInsets.all(10.0
            ),
          ),
          Text('CPF', 
            style: TextStyle(
              fontSize: 20
            ),
           ),
          TextField(
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
          ),
          Padding(
            padding: EdgeInsets.all(10.0
            ),
          ),
          Text('Data de Nascimento', 
            style: TextStyle(
              color: AppColors.dark_background, 
              fontSize: 20
            ),
          ),
          TextField(
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
          ),
          Padding(
            padding: EdgeInsets.all(10.0
            ),
          ),
          Text('Gênero', 
            style: TextStyle(
              color: AppColors.dark_background, 
              fontSize: 20
            ),
          ),
          TextField(
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
          ),
          Padding(
            padding: EdgeInsets.all(10.0
            ),
          ),
          Text('Telefone', 
            style: TextStyle(
              color: AppColors.dark_background, 
              fontSize: 20,
            ),
          ),
          TextField(
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
          ),
        ],
        ),
      ),
      );
    }
}