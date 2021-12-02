import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'jogos.dart';
import 'widget_function.dart';
import 'login.dart';


class PrincipalPage extends StatefulWidget {
  const PrincipalPage({Key? key}) : super(key: key);

  @override
  _PrincipalPageState createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage> {

  //REFERENCIAR A COLEÇÃO DE CAFÉS
  late CollectionReference jogos;

  @override
  void initState(){
    super.initState();

    jogos = FirebaseFirestore.instance.collection('jogos');
  }
  
  //
  // ITEM LISTA
  // DEFINIR A APARECENCIA DE CADA ITEM DA LISTA
  Widget itemLista(item){

     String nome = item.data()['nome'];
     Timestamp data = item.data()['data'];
      
    return ListTile(
      title: Text(nome, style: TextStyle(fontSize: 30, color: Colors.white)),
      subtitle: Text( DateFormat('dd/MM/yyyy').format(DateTime.parse(data.toDate().toString())),style: TextStyle(fontSize: 25, color: Colors.white)),
      trailing: IconButton(
        icon: Icon(Icons.delete, color: Colors.white),
        onPressed: (){
          
          //
          //APAGAR UM DOCUMENTO DA COLEÇÃO
          //
          jogos.doc(item.id).delete();
        },
      ),
      onTap: (){
        Navigator.pushNamed(context,'/inserir', arguments: item.id);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Games Connect"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: StreamBuilder<QuerySnapshot>(
        
        stream: jogos.snapshots(),

        //exibir os dados retornados
        builder: (context, snapshot){
          switch(snapshot.connectionState){
            
            case ConnectionState.none:
              return const Center(child: Text('Não foi possível conectar ao Firebase'));

            case ConnectionState.waiting:
              return const Center(child: CircularProgressIndicator());

            //dados recebidos
            default:
              final dados = snapshot.requireData;
              return ListView.builder(
                itemCount: dados.size,
                itemBuilder: (context,index){
                  return itemLista(dados.docs[index]);
                },
              );
          }

        }
      ),
     
      
      backgroundColor: Colors.black.withBlue(60),
      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black.withBlue(20),
        child: const Icon(Icons.add),
        onPressed: (){
          Navigator.pushNamed(context, '/inserir');
        } 
      ),
    );
  }
}
