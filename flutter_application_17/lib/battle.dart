import 'package:flutter/material.dart';

class MyBattle extends StatefulWidget {
  const MyBattle({super.key});

  @override
  State<MyBattle> createState() => _MyBattleState();
}

class _MyBattleState extends State<MyBattle> {
  List<String> lista = [
    "images/fire.png",
    "images/water.png",
    "images/grass.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Escolha um tipo para a batalha"),
        backgroundColor: const Color.fromARGB(255, 180, 42, 32),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Tipo do adversário"),
            SizedBox(
              width: 200,
              child: Image.asset("images/fire.png"),
            )
          ],
        ),
      ),
    );
  }
}
