import 'package:flutter/material.dart';
import 'home.dart';
import 'login.dart';

class Cadastro extends StatelessWidget {
  final String nome;
  final String email;
  final String senha;
  final String senha2;

    const Cadastro(this.nome, this.email, this.senha, this.senha2, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Games Connect"),
      centerTitle: true,
      backgroundColor: Colors.black,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black.withBlue(60), Colors.black.withBlue(20)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),

        ),
        padding: EdgeInsets.only(top: 40, left: 40, right: 40),
        child: ListView(
          children: <Widget>[
            SizedBox(
                height: 90,
                child: Center(
                    child: Padding(
                        padding: EdgeInsets.all(25.0),
                        child: Text('Cadastro',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold))))),
            TextFormField(
              //cursorColor: Colors.yellow,
              // autofocus: true,
              initialValue: this.nome,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                //focusedBorder: UnderlineInputBorder(
                //borderSide: BorderSide(color: Colors.white)),
                labelText: "Nome",
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            SizedBox(
              height: 25,
            ),
            TextFormField(
              // autofocus: true,
              initialValue: this.email,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                //focusedBorder: UnderlineInputBorder(
                //borderSide: BorderSide(color: Colors.white)),
                labelText: "E-mail",
                labelStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 25,
            ),
            TextFormField(
              // autofocus: true,
              initialValue: this.senha,
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                //focusedBorder: UnderlineInputBorder(
                //borderSide: BorderSide(color: Colors.white)),
                labelText: "Senha",
                labelStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 25,
            ),
            TextFormField(
              // autofocus: true,
              initialValue: this.senha2,
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                //focusedBorder: UnderlineInputBorder(
                //borderSide: BorderSide(color: Colors.white)),
                labelText: "Repetir Senha",
                labelStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                /*gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [
                    Colors.black.withBlue(60),
                    Colors.black.withBlue(20)
                  ],
                ),*/
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: SizedBox.expand( 
                child: TextButton(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      if (this.nome != '')
                        Text(
                          'Atualizar Cadastro',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      if (this.nome == '')
                        Text(
                        'Finalizar Cadastro',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  onPressed: () {
                    if (this.nome != '')
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Home(),
                        ),
                      );
                    if (this.nome == '')
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        ),
                      );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
