import 'package:flutter/material.dart';
import 'home.dart';
import 'login.dart';
import 'cadastro.dart';

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
