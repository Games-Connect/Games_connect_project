import 'package:flutter/material.dart';
import 'package:games_connect_project/jogos.dart';
import 'home.dart';
import 'login.dart';
import 'cadastro.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginPage(),
        '/criar_conta': (context) => const CriarContaPage(),
        '/principal': (context) => const PrincipalPage(),

        '/inserir': (context) => const Jogos(),
      },
    ),);
}
