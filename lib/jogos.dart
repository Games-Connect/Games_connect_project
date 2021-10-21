import 'package:flutter/material.dart';
import 'home.dart';
import 'package:intl/intl.dart';

class Jogos extends StatelessWidget {
  final String jogoNome;
  final String data;

    const Jogos(this.jogoNome, this.data, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String dataFim = '';
    if(data == '')
      dataFim = DateFormat('dd/MM/yyyy – kk:mm').format(now);
    else
      dataFim = data;
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
                height: 80,
                child: Center(
                    child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text('Cadastro de jogos',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold))))),
            TextFormField(
              //cursorColor: Colors.yellow,
              // autofocus: true,
              initialValue: this.jogoNome,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                //focusedBorder: UnderlineInputBorder(
                //borderSide: BorderSide(color: Colors.white)),
                labelText: "Nome do jogo",
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
              initialValue: dataFim,
              
              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                //focusedBorder: UnderlineInputBorder(
                //borderSide: BorderSide(color: Colors.white)),
                labelText: "Data de finalização",
                labelStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(fontSize: 20),
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
                      if (this.jogoNome != '')
                        Text(
                          'Atualizar Cadastro',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      if (this.jogoNome == '')
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Home(),
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
