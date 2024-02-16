// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyDog extends StatelessWidget {
  const MyDog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(204, 236, 236, 236),
      appBar: AppBar(title: Text("Teste para ver se tá funfando!"), backgroundColor: Colors.amber, centerTitle: true),
      body: Center(child: Column(
        children: [
          Text("teste 1", style: TextStyle(fontSize: 30, color: Colors.teal, backgroundColor: Colors.white, fontStyle: FontStyle.italic)), 
          Text("teste 2"), 
          Text("teste 3")
          ])),
    );
  }
}
