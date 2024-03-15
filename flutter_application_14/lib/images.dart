import 'package:flutter/material.dart';

class MyImages extends StatefulWidget {
  const MyImages({super.key});

  @override
  State<MyImages> createState() => _MyImagesState();
}

class _MyImagesState extends State<MyImages> {
  int escolha = 0;
  String text = "";
  List<String> lista = ["Bulbasaur", "Charmander", "Squirtle"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              child: GestureDetector(
                child: Image.asset('images/bulbasaur.png'),
                onTap: () => {
                  escolha = 1,
                  setState(() {}),
                },
              ),
              height: 300,
            ),
            SizedBox(
              child: GestureDetector(
                child: Image.asset('images/charmander.png'),
                onTap: () => {
                  escolha = 2,
                  setState(() {}),
                },
              ),
              height: 300,
            ),
            SizedBox(
              child: GestureDetector(
                child: Image.asset('images/Squirtle.png'),
                onTap: () => {
                  escolha = 3,
                  setState(() {}),
                },
              ),
              height: 300,
            ),
            Text(text)
          ],
        ),
      ),
    );
  }
}
