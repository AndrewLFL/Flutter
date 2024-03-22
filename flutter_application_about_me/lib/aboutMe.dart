// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

class MyAboutMe extends StatelessWidget {
  const MyAboutMe({super.key});

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
      body: SingleChildScrollView(
        child: 
          Center(
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
                SizedBox(
                  child: Image.asset(
                    "images/ultraball.png",
                    width: 100,
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
                      "Pokemon Fire Red - Desde o nascimento, uma chama arde na ponta da cauda. Sua vida terminaria se a chama se apagasse.\n\n" +
                      "Pokemon Leaf Green - Tem preferência por coisas quentes. Quando chove, diz-se que o vapor sai da ponta da cauda."),
                ),
              ),
            ),
              ],
            ),
          ),      
      ) 


    );
  }
}