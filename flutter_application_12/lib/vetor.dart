// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyVet extends StatefulWidget {
  const MyVet({super.key});

  @override
  State<MyVet> createState() => _MyVetState();
}

class _MyVetState extends State<MyVet> {
  List<int> lista = [0, 1, 2, 3];
  String text = "";
  String textSoma = "";
  String textMaior = "";
  String textMenor = "";
  
  void maior() {
    int maior = lista[0];
    for (int item in lista) {
      if (maior < item) {
        maior = item;
      }
    }
    textMaior = maior.toString();
  }

  void menor() {
    int menor = lista[0];
    for (int item in lista) {
      if (menor > item) {
        menor = item;
      }
    }
    textMenor = menor.toString();
  }

  void sum() {
    int sum = 0;
    for (int item in lista) {
      sum += item;
    }
    ;
    textSoma = sum.toString();
  }

  void mostrar() {
    text = "";
    for (int item in lista) {
      text = text + " " + item.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vetores em Dart"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
          child: Column(
        children: [
          Text("Vetor = " + text),
          ElevatedButton(
              onPressed: () => {
                    mostrar(),
                    setState(() {}),
                  },
              child: Text("Mostrar Elementos")),
          Text("Soma dos elementos = " + textSoma),
          ElevatedButton(
              onPressed: () => {
                    sum(),
                    setState(() {}),
                  },
              child: Text("Soma dos elementos")),
          Text("Maior elemento = " + textMaior),
          ElevatedButton(
              onPressed: () => {
                    maior(),
                    setState(() {}),
                  },
              child: Text("Maior elemento")),
          Text("Menor elemento = " + textMenor),
          ElevatedButton(
              onPressed: () => {
                    menor(),
                    setState(() {}),
                  },
              child: Text("Menor elemento"))
        ],
      )),
    );
  }
}
