import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class Jogos extends StatefulWidget {
  const Jogos({Key? key}) : super(key: key);

  @override
  _JogosState createState() => _JogosState();
}

class _JogosState extends State<Jogos> {
  var jogoNome = TextEditingController();
  var data = TextEditingController();
  DateTime selectedDate = DateTime.now();

  //
  // RETORNAR UM DOCUMENTO A PARTIR DO ID
  //
  getDocumentById(id) async{

    // select * from tb_cafes where id = 1;
    await FirebaseFirestore.instance.collection('jogos')
    .doc(id).get().then((doc){
      jogoNome.text = doc.get('nome');
      data.text = DateFormat('dd/MM/yyyy').format(DateTime.parse(doc.get('data').toDate().toString()));
    });
  }

  @override
  Widget build(BuildContext context) {

    //
    // RECUPERAR O ID DO CAFÉ
    //
    var id = ModalRoute.of(context)?.settings.arguments;

    if (id != null){
      if (jogoNome.text.isEmpty && data.text.isEmpty){
        getDocumentById(id);
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Games Connect"),
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
                        child: Text('Detalhes de jogos',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold))))),
            TextField(
              //cursorColor: Colors.yellow,
              // autofocus: true,
              controller: this.jogoNome,
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
            TextField(
              controller: data,
              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                //focusedBorder: UnderlineInputBorder(
                //borderSide: BorderSide(color: Colors.white)),
                labelText: "Data de finalização",
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(fontSize: 20,color: Colors.white),
              onTap: () {
                _selectDate(context);
              },
            ),
            SizedBox(
              height: 50,
            ),
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 150,
                child: OutlinedButton(
                    child: const Text('salvar'),
                    onPressed: () {

                      if (id == null){
                        //
                        // ADICIONAR DOCUMENTO NO FIRESTORE
                        //
                        FirebaseFirestore.instance.collection('jogos')
                          .add(
                          {
                            'nome': jogoNome.text,
                            'data': Timestamp.fromDate(selectedDate)
                          }
                        );
                      }else{
                        //
                        // ATUALIZAR DOCUMENTO NO FIRESTORE
                        //
                        FirebaseFirestore.instance.collection('jogos')
                          .doc(id.toString()).set(
                          {
                            'nome': jogoNome.text,
                            'data': Timestamp.fromDate(selectedDate)
                          }
                        );
                      }

                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Operação realizada com sucesso!'),
                          duration: Duration(seconds: 2),
                        )
                      );

                      Navigator.pop(context);
                    }),
              ),
              Container(
                width: 150,
                child: OutlinedButton(
                    child: const Text('cancelar'),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              ),
            ],
          ),
          SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }

  Future<Null> _selectDate(BuildContext context) async {
    DateFormat formatter = DateFormat('dd/MM/yyyy');

    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1901, 1),
        lastDate: DateTime(2100));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        data.value = TextEditingValue(text: formatter.format(picked));
      });
  }
}
