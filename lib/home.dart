import 'package:flutter/material.dart';
import 'package:games_connect_project/widget_function.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Jogos finalizados"),
      centerTitle: true,
      backgroundColor: Colors.black,
      ),
      body: Container(
        //largura responsiva
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,

        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black.withBlue(60), Colors.black.withBlue(20)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),

        ),
        
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Row(
            children: [
              Column(
                children: [
                  WidgetFunction('God of War Ragnarok ','lib/imagens/download-4.jpg'),
                  WidgetFunction('Call of Duty','lib/imagens/download-4.jpg'),
                  WidgetFunction('Super Mario Bros','lib/imagens/download-4.jpg'),
                  
                ],
              ),

            ],
          ),

        ),

      ),

      drawer: Drawer(
        child: Container(
          width: MediaQuery.of(context).size.width*.1,
          decoration: BoxDecoration(

            gradient: LinearGradient(
              colors: [Colors.black.withBlue(60), Colors.black.withBlue(20)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            
          ),
             child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 20, 2, 0),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.black.withBlue(60), Colors.black.withBlue(20)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),

                        //BORDAS ARREDONDADAS
                        borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      
                      child:ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: Image.network(
                            'lib/imagens/pp.jpg',
                            width: MediaQuery.of(context).size.width * .15,

                        ),
                      ),
                    ), 
                    
                    Container(
                      margin: EdgeInsets.only(left: 25),
                      child:Text(
                        'Bem-vindo, João Paulo!', 
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),  
                      ) 
                    )    
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 40, 2, 0),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.black.withBlue(60), Colors.black.withBlue(20)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),

                        //BORDAS ARREDONDADAS
                        borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      
                      child:Row(
                        children: [
                          Icon(Icons.home, size:30),
                          Container(
                            margin: EdgeInsets.fromLTRB(40, 0, 20, 0),
                            child:Text(
                              'Tela inicial', 
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ), 
                            ),
                          )
                        ],
                      ),
                    ), 

                    Container(
                          margin: EdgeInsets.fromLTRB(20, 20, 2, 0),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.black.withBlue(60), Colors.black.withBlue(20)],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),

                            //BORDAS ARREDONDADAS
                            borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                          
                          child:Row(
                            children: [
                              Icon(Icons.games, size:30),
                              Container(
                                margin: EdgeInsets.fromLTRB(40, 0, 20, 0),
                                child:Text(
                                  'Cadastro de jogos', 
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ), 
                                ),
                              )
                            ],
                          ),
                        ), 

                    Container(
                          margin: EdgeInsets.fromLTRB(20, 20, 2, 0),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.black.withBlue(60), Colors.black.withBlue(20)],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),

                            //BORDAS ARREDONDADAS
                            borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                          
                          child:Row(
                            children: [
                              Icon(Icons.settings, size:30),
                              Container(
                                margin: EdgeInsets.fromLTRB(40, 0, 20, 0),
                                child:Text(
                                  'Dados do usuário', 
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ), 
                                ),
                              )
                            ],
                          ),
                        ), 
                    
                    Container(
                          margin: EdgeInsets.fromLTRB(20, 20, 2, 0),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.black.withBlue(60), Colors.black.withBlue(20)],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),

                            //BORDAS ARREDONDADAS
                            borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                          child:Row(
                            
                            children: [
                              Icon(Icons.logout, size:30, ),
                              Container(
                                margin: EdgeInsets.fromLTRB(40, 0, 20, 0),
                                child:Text(
                                  'Sair', 
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ), 
                                ),
                              )
                            ],
                          ),
                        ), 
                 
                 ],
                )
                ],
            ),

        ),

     
      ),

    );
  }
}