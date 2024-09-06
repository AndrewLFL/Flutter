import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:starwars_project/person.dart';
import 'package:starwars_project/planet.dart';
import 'package:starwars_project/starship.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController controladorId = TextEditingController();
  String pesquisa = "";

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
                          print(person.name);
                          print(person.height);
                          print(person.mass);
                          print(person.hairColor);
                          print(person.skinColor);
                        } else if (pesquisa == "planets") {
                          Planet planet = Planet(
                              name: data["name"],
                              gravity: data["gravity"],
                              climate: data["climate"],
                              rotationPeriod: data["rotation_period"],
                              diameter: data["diameter"]);
                          print(planet.name);
                          print(planet.gravity);
                          print(planet.climate);
                          print(planet.rotationPeriod);
                          print(planet.diameter);
                        } else if (pesquisa == "starships") {
                          Starship starship = Starship(
                              name: data["name"],
                              model: data["model"],
                              manufacturer: data["manufacturer"],
                              length: data["length"],
                              crew: data["crew"]);
                          print(starship.name);
                          print(starship.model);
                          print(starship.manufacturer);
                          print(starship.length);
                          print(starship.crew);
                        }
                      } else {
                        print("Erro ao buscar dados");
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
                ))
          ],
        ),
      ),
    );
  }
}
