import 'package:flutter/material.dart';

import 'jogos.dart';

class WidgetFunction extends StatelessWidget {
  //ATRIBUTOS
  // Os atributos serão utilizados para receber dados
  // no momento da criação do Widget
  final String nome;
  final String imagem;

  const WidgetFunction(this.nome, this.imagem, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // MARGENS (externo)
      //margin: EdgeInsets.all(5),
      //margin: EdgeInsets.only(top: 10),
      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),

      // ESPAÇAMENTO (interno)
      padding: EdgeInsets.all(20),
      //padding: EdgeInsets.only(top: 5),
      //padding: EdgeInsets.fromLTRB(30, 20, 30, 0),

      width: MediaQuery.of(context).size.width * .80,
      //height: 300,

      child: TextButton(
        child: Row(
          children: [
            Container(
              // FOTO CIRCULAR DO JOGO
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.network(
                  this.imagem,
                  width: MediaQuery.of(context).size.width * .15,
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.all(25),
                child: Text(
                  this.nome,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ))
          ],
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Jogos(),
            ),
          );
        },
      ),
    );
  }
}
