// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyExercise extends StatelessWidget {
  const MyExercise({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 1", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                "Eu",
                style: TextStyle(backgroundColor: Colors.blue, fontSize: 50),
              ),
              SizedBox(
                height: 50,
              ),
              Text("Amo",
                  style: TextStyle(
                      backgroundColor: const Color.fromARGB(255, 243, 33, 33),
                      fontSize: 50)),
              SizedBox(
                height: 50,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text("a",
                    style: TextStyle(
                        backgroundColor: Color.fromARGB(255, 243, 240, 33),
                        fontSize: 50)),
                SizedBox(
                  width: 50,
                ),
                Text("aula",
                    style: TextStyle(
                        backgroundColor: const Color.fromARGB(255, 243, 33, 33),
                        fontSize: 50)),
                SizedBox(
                  width: 50,
                ),
                Text("da",
                    style: TextStyle(
                        backgroundColor:
                            const Color.fromARGB(255, 243, 240, 33),
                        fontSize: 50)),
              ]),
              SizedBox(
                height: 50,
              ),
              Text("Tania",
                  style: TextStyle(
                      backgroundColor: Color.fromARGB(255, 243, 33, 215),
                      fontSize: 50)),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.network(
                      "https://cdn.pixabay.com/photo/2014/04/03/00/42/party-309155_640.png")),
            ],
          ),
        ),
      ),
    );
  }
}
