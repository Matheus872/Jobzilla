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
        title: const Text('Cadastro'),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.all(10.0)),
            Text('Primeiro Nome', style: TextStyle(fontSize: 20), ) ,TextField(decoration: InputDecoration
            (hintText: 'Informe o seu primeiro nome',icon: Icon(Icons.person),border:OutlineInputBorder(borderSide: BorderSide())),),
            Padding(
              padding: EdgeInsets.all(10.0)),
            Text('Sobrenome', style: TextStyle(fontSize: 20), ) ,TextField(decoration: InputDecoration
            (hintText: 'Informe o seu sobrenome',icon: Icon(Icons.check)),),
            Padding(
              padding: EdgeInsets.all(10.0)),
            Text('CPF', style: TextStyle(fontSize: 20), ) ,TextField(decoration: InputDecoration
            (hintText: 'Informe o CPF',icon: Icon(Icons.check)),),
            Padding(
              padding: EdgeInsets.all(10.0)),
            Text('Data de Nascimento', style: TextStyle(fontSize: 20), ) ,TextField(decoration: InputDecoration
            (hintText: 'Informe a data de nascimento',icon: Icon(Icons.calendar_month)),),
            Padding(
              padding: EdgeInsets.all(10.0)),
            Text('Gênero', style: TextStyle(fontSize: 20), ) ,TextField(decoration: InputDecoration
            (hintText: 'Informe o gênero',icon: Icon(Icons.check)),),
            Padding(
              padding: EdgeInsets.all(10.0)),
            Text('Telefone', style: TextStyle(fontSize: 20), ) ,TextField(decoration: InputDecoration
            (hintText: 'Informe o seu telefone',icon: Icon(Icons.phone)),),
          ],
          ),
        ),
      );
    }
}