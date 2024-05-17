import 'package:ex_navigation/filme.dart';
import 'package:flutter/material.dart';

class Pixar extends StatefulWidget {

  List<Filme> pixarMovies = [];
  Pixar(this.pixarMovies, {super.key});

  @override
  State<Pixar> createState() => _PixarState();
}

class _PixarState extends State<Pixar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Disney Pixar Studios",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                )),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(126, 167, 210, 1),
      ),
      body:  
      Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/pixar_wall.jpg"),
              fit: BoxFit.cover,
              opacity: 0.95),
        ),
        child: 
        ListView.builder(
          itemCount: widget.pixarMovies.length,
          itemBuilder: (context, index) {
            return 
              Column(
                children: [
                  SizedBox(height: 25),
                  SizedBox(
                    child: Image.asset(widget.pixarMovies[index].capa),
                    width: 200,
                  ),
                  SizedBox(height: 10),
                  Text(widget.pixarMovies[index].titulo, style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  )),
                  Text('R\$ ${widget.pixarMovies[index].preco.toString()}', style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  )),
                  if(index==widget.pixarMovies.length-1)
                    Column(
                      children: [
                        SizedBox(height: 15),
                        SizedBox(
                          width: 100,
                          height: 40,
                          child: FloatingActionButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("voltar", style: TextStyle(color: Colors.white, fontSize: 16)),
                            backgroundColor: Color.fromRGBO(126, 167, 210, 1),
                          )                          
                        ),
                        SizedBox(height: 15),
                      ],
                    )    
                ],
              );
          },
        ),      
    ));
  }
}