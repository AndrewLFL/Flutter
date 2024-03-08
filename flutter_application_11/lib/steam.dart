import 'package:flutter/material.dart';

class MySteam extends StatefulWidget {
  const MySteam({super.key});

  @override
  State<MySteam> createState() => _MySteamState();
}

class _MySteamState extends State<MySteam> {
  List<String> games = ["Celeste", "Hollow Knight", "Stardew Valley"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Steam"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text("Biblioteca"),
          Row(
            children: [
              Text("$games"),
              ElevatedButton(onPressed: () => {}, child: Text("Selecione")),
            ],
          ),
          Row(
            children: [
              Text("Celeste"),
              ElevatedButton(onPressed: () => {}, child: Text("Selecione")),
            ],
          ),
          Row(
            children: [
              Text("Celeste"),
              ElevatedButton(onPressed: () => {}, child: Text("Selecione")),
            ],
          )
        ],
      ),
    );
  }
}
