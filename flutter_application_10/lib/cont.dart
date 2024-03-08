// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/material.dart.';

class MyCont extends StatefulWidget {
  const MyCont({super.key});

  @override
  State<MyCont> createState() => _MyContState();
}

class _MyContState extends State<MyCont> {
  int value = 0;
  late Text texto = Text("$value");

  void plus() {
    value++;
    texto = Text("$value");
  }

  void minun() {
    value--;
    texto = Text("$value");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 200,
            ),
            Image.asset(
              'images/img.jpg',
              width: 300,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Contador usando Stateful Widget',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  backgroundColor: Color.fromARGB(255, 101, 173, 231),
                  foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                  onPressed: () => {minun(), setState(() {})},
                  child: Text(
                    "-",
                    style: TextStyle(fontSize: 40),
                  ),
                  shape: CircleBorder(),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 226, 226, 226)),
                  child: Center(child: texto),
                ),
                SizedBox(
                  width: 15,
                ),
                FloatingActionButton(
                  backgroundColor: Color.fromARGB(255, 101, 173, 231),
                  foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                  onPressed: () => {plus(), setState(() {})},
                  child: Icon(Icons.add),
                  shape: CircleBorder(),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text('Valor do contador: $value'),
          ],
        ),
      ),
    );
  }
}
