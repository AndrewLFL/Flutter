// ignore_for_file: prefer_const_constructors

import 'dart:html';

import 'package:flutter/material.dart';

class MyPokedex extends StatelessWidget {
  const MyPokedex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(204, 231, 226, 226),
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Pokedex"), centerTitle: true,
      ),
      body: Center(child: Column(children: [
        Text("001 Bulbasaur", style: TextStyle(fontSize: 30, color: Colors.teal)), 
        Text("002 Ivysaur", style: TextStyle(fontSize: 30, color: Colors.teal)), 
        Text("003 Venusaur", style: TextStyle(fontSize: 30, color: Colors.teal))])),
    );
  }
}
