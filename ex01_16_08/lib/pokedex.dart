// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

import 'pokemon.dart';

class MyPokedex extends StatefulWidget {
  const MyPokedex({super.key});

  @override
  State<MyPokedex> createState() => _MyPokedexState();
}

class _MyPokedexState extends State<MyPokedex> {
  List<Pokemon> lista = [
    Pokemon("Bulbasaur", "Grass", "images/bulbasaur.png"),
    Pokemon("Charmander", "Fire", "images/charmander.png"),
    Pokemon("Squirtle", "Water", "images/squirtle.png"),
    Pokemon("Pikachu", "Electric", "images/pikachu.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Pokedex Kanto',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color.fromARGB(255, 204, 35, 23),
          centerTitle: true,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(lista[index].name),
                subtitle: Text(lista[index].type),
                leading: Image.asset(lista[index].imageUrl),
                trailing: Icon(Icons.arrow_forward_ios),
              );
            },
            separatorBuilder: (context, index) => Divider(
                  thickness: 2,
                ),
            itemCount: lista.length));
  }
}
