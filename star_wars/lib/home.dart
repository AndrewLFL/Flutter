import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:star_wars/person.dart';
import 'package:star_wars/planet.dart';
import 'package:star_wars/starship.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController controladorId = TextEditingController();
  String pesquisa = "";
  Text text = Text("");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Star Wars API'),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            SizedBox(
              child: TextField(
                controller: controladorId,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  labelText: "ID",
                  filled: true,
                  prefixIcon: Icon(Icons.mail),
                  fillColor: Color.fromARGB(255, 248, 248, 248),
                ),
              ),
              width: 400,
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Pessoas:"),
                Radio(
                    value: "people",
                    groupValue: pesquisa,
                    onChanged: (value) {
                      pesquisa = value!;
                      setState(() {});
                    }),
                SizedBox(
                  width: 20,
                ),
                Text("Planetas:"),
                Radio(
                    value: "planets",
                    groupValue: pesquisa,
                    onChanged: (value) {
                      pesquisa = value!;
                      setState(() {});
                    }),
                SizedBox(
                  width: 20,
                ),
                Text("Naves:"),
                Radio(
                    value: "starships",
                    groupValue: pesquisa,
                    onChanged: (value) {
                      pesquisa = value!;
                      setState(() {});
                    })
              ],
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
                width: 120,
                child: FloatingActionButton(
                  onPressed: () async {
                    if (controladorId.text.isNotEmpty) {
                      http.Response resposta = await http.get(Uri.parse(
                          "https://swapi.dev/api/$pesquisa/${controladorId.text}/"));
                      if (resposta.statusCode == 200) {
                        Map<String, dynamic> data = jsonDecode(resposta.body);
                        if (pesquisa == "people") {
                          Person person = Person(
                              name: data["name"],
                              height: int.parse(data["height"]),
                              mass: int.parse(data["mass"]),
                              hairColor: data["hair_color"],
                              skinColor: data["skin_color"]);
                          text = Text(
                              "Nome: ${person.name}\nAltura: ${person.height}\nPeso: ${person.mass}\nCor do cabelo: ${person.hairColor}\nCor da pele: ${person.skinColor}");
                        } else if (pesquisa == "planets") {
                          Planet planet = Planet(
                              name: data["name"],
                              gravity: data["gravity"],
                              climate: data["climate"],
                              rotationPeriod: data["rotation_period"],
                              diameter: data["diameter"]);
                          text = Text(
                              "Nome: ${planet.name}\nGravidade: ${planet.gravity}\nClima: ${planet.climate}\nPeríodo de rotação: ${planet.rotationPeriod}\nDiâmetro: ${planet.diameter}");
                        } else if (pesquisa == "starships") {
                          Starship starship = Starship(
                              name: data["name"],
                              model: data["model"],
                              manufacturer: data["manufacturer"],
                              length: data["length"],
                              crew: data["crew"]);
                          text = Text(
                              "Nome: ${starship.name}\nModelo: ${starship.model}\nFabricante: ${starship.manufacturer}\nComprimento: ${starship.length}\nTripulação: ${starship.crew}");
                        }
                      } else {
                        text = Text("Dado não encontrado");
                      }
                    }
                    setState(() {});
                  },
                  child: Text(
                    "Buscar",
                    style: TextStyle(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontSize: 16),
                  ),
                  backgroundColor: Color.fromARGB(255, 252, 236, 11),
                )),
            SizedBox(
              height: 25,
            ),
            Divider(),
            SizedBox(
              height: 25,
            ),
            text,
          ],
        ),
      ),
    );
  }
}
