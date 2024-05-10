import 'package:flutter/material.dart';

class Favorito extends StatefulWidget {
  List<String> lista = [];

  Favorito(this.lista, {super.key});

  @override
  State<Favorito> createState() => _FavoritoState();
}

class _FavoritoState extends State<Favorito> {
  @override
  Widget build(BuildContext context) {
    mostrar();
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorito"),
        backgroundColor: Colors.indigoAccent,
      ),
    );
  }

  void mostrar() {
    widget.lista.forEach((element) {
      print(element);
    });
  }
}
