import 'package:flutter/material.dart';
import 'home.dart';
import 'cadastro.dart';
import 'sobre.dart';

class Sobre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Games Connect"),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Container(
              padding: EdgeInsets.only(top: 60, left: 40, right: 40),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withBlue(60),
                    Colors.black.withBlue(20)
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: ListView(children: <Widget>[
                SizedBox(
                  width: 128,
                  height: 128,
                  child: Image.asset("LogoGC.png"),
                ),
                SizedBox(
                    height: 90,
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(25.0),
                            child: Text('Games Connect',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    //color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold))))),
                SizedBox(
                  height: 1,
                ),
                SizedBox(
                    height: 180,
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text(
                                'O aplicativo Games Connect serve como um organizador de jogos digitais,' +
                                    'onde o usuário pode cadastrar seus jogos favoritos para catalogar ' +
                                    'quais já foram ' 'zerados' '.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    //color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold))))),
                SizedBox(
                  height: 1,
                ),
                SizedBox(
                    height: 90,
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text(
                                'Criado por: \n João Paulo Novato \n Kleiber Paz',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    //color: Colors.white,
                                    fontSize: 15))))),
              ])),
        ));
  }
}
