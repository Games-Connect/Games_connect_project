import 'package:flutter/material.dart';
import 'home.dart';
import 'login.dart';
import 'cadastro.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Login(),
    );
  }
}
