import 'package:ex_navigation/filme.dart';
import 'package:flutter/material.dart';

class Marvel extends StatefulWidget {

  List<Filme> marvelMovies = [];
  Marvel(this.marvelMovies,{super.key});

  @override
  State<Marvel> createState() => _MarvelState();
}

class _MarvelState extends State<Marvel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Marvel Studios",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                )),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(238, 23, 31, 1),
      ),
      body: 
       Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/marvel_wall.jpg"),
              fit: BoxFit.cover,
              ),
        ),
        child: 
        ListView.builder(
          itemCount: widget.marvelMovies.length,
          itemBuilder: (context, index) {
            return 
              Column(
                children: [
                  SizedBox(height: 25),
                  SizedBox(
                    child: Image.asset(widget.marvelMovies[index].capa),
                    width: 200,
                  ),
                  SizedBox(height: 10),
                  Text(widget.marvelMovies[index].titulo, style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),),
                  Text('R\$ ${widget.marvelMovies[index].preco.toString()}', style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),),
                  if(index==widget.marvelMovies.length-1)
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
                            backgroundColor: Color.fromRGBO(238, 23, 31, 1),
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