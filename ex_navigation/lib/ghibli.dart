import 'package:ex_navigation/filme.dart';
import 'package:flutter/material.dart';

class Ghibli extends StatefulWidget {

  List<Filme> ghibliMovies = [];
  Ghibli(this.ghibliMovies, {super.key});

  @override
  State<Ghibli> createState() => _GhibliState();
}

class _GhibliState extends State<Ghibli> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Studio Ghibli",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                )),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(163, 121, 65, 1),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/ghibli_wall.jpg"),
              fit: BoxFit.cover,
              opacity: 0.95),
        ),
        child: 
        ListView.builder(
          itemCount: widget.ghibliMovies.length,
          itemBuilder: (context, index) {
            return 
              Column(
                children: [
                  SizedBox(height: 25),
                  SizedBox(
                    child: Image.asset(widget.ghibliMovies[index].capa),
                    width: 200,
                  ),
                  SizedBox(height: 10),
                  Text(widget.ghibliMovies[index].titulo, 
                    style: 
                      TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      )
                  ),
                  Text('R\$ ${widget.ghibliMovies[index].preco.toString()}',
                    style: 
                      TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      )
                  ),
                  if(index==widget.ghibliMovies.length-1)
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
                            backgroundColor: Color.fromRGBO(163, 121, 65, 1)
                          )                          
                        ),
                        SizedBox(height: 15),
                      ],
                    )                           
                ],
              );
          },
        ),

      )
    );
  }
}