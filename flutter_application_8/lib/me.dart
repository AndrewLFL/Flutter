// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'dart:io';
import 'dart:ui_web';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class MyReadme extends StatelessWidget {
  const MyReadme({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sobre Mim",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 238, 136, 41),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 40),
            SizedBox(
              child: CircleAvatar(
                  backgroundImage: AssetImage("images/charmander.png")),
              height: 300,
              width: 300,
            ),
            SizedBox(height: 20),
            Text(
              "Charmander Char",
              style: TextStyle(
                  fontSize: 20, fontFamily: 'Pixel', letterSpacing: -2),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  child: Image.asset(
                    "images/pokebola.png",
                    width: 50,
                  ),
                ),
                SizedBox(width: 20),
                SizedBox(
                  child: Image.asset(
                    "images/luxuryball.png",
                    width: 50,
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            SizedBox(
              width: 450,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  border: Border.all(),
                  color: const Color.fromARGB(255, 255, 204, 126),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                      "Pokemon Fire Red - From the time it is born, a flame burns at the tip of its tail. Its life would end if the flame were to go out.\n\nPokemon Leaf Green - It has a preference for hot things. When it rains, steam is said to spout from the tip of its tail."),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
