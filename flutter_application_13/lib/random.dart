// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:collection';

import 'package:flutter/material.dart';
import 'dart:math';

class MyRandom extends StatefulWidget {
  const MyRandom({super.key});

  @override
  State<MyRandom> createState() => _MyRandomState();
}

class _MyRandomState extends State<MyRandom> {
  HashMap map = new HashMap<String, int>();
  List<String> pokemons = [
    "001 Bulbasaur",
    "002 Ivysaur",
    "003 Venusaur",
    "004 Charmander",
    "005 Charmeleon",
    "006 Charizard",
    "007 Squirtle",
    "008 Wartotle",
    "009 Blastoise"
  ];
  List<String> imagens = [
    "images/bulbasaur.png",
    "images/Ivysaur.png",
    "images/Venusaur.png",
    "images/charmander.png",
    "images/charmeleon.png",
    "images/charizard.png",
    "images/Squirtle.png",
    "images/wartortle.png",
    "images/Blastoise.png",
  ];
  String aux = "";
  String img = "images/question.png";

  void gerarPoke() {
    var r = Random().nextInt(9);
    aux = pokemons[r];
    img = imagens[r];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pokedex",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(250, 220, 10, 45),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Image.asset('images/pokedex.png'),
            SizedBox(
              height: 50,
            ),
            Text(
              aux,
              style: TextStyle(fontFamily: 'Pixel'),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              child: Image.asset(
                img,
              ),
              height: 150,
            ),
            SizedBox(height: 100),
            SizedBox(
                width: 200,
                child: FloatingActionButton(
                  onPressed: () => {gerarPoke(), setState(() {})},
                  child: Text(
                    "Gerar Inicial",
                    style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Colors.black,
                ))
          ],
        ),
      ),
    );
  }
}
