import 'package:flutter/material.dart';
import 'home.dart';
import 'login.dart';
import 'cadastro.dart';

<<<<<<< HEAD
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Games Connect',
      theme: ThemeData.dark(),
      home: Home(),
    )
  );
}
=======
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
>>>>>>> f328dd0bb65c1607d89f0ba7207434a99e478358
