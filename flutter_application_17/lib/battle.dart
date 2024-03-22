import 'dart:math';

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
  int escolha = 0;
  String tipoAdv = "images/unknown.png";
  String res = "???";
  int adv = 0;

  int gerarTipo() {
    var r = Random().nextInt(3);
    tipoAdv = lista[r];
    return r;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Batalha Pokemon",style: TextStyle(color: Colors.white),),
        backgroundColor: const Color.fromARGB(255, 180, 42, 32),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Text("Tipo do adversário"),
            SizedBox(
              width: 200,
              child: Image.asset(tipoAdv),
            ),
            SizedBox(height: 20,),
            Text("Escolha um tipo"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  child:                
                    SizedBox(
                      width: 120,
                      child: Image.asset(lista[0]),
                  ),
                  onTap: () => {
                    escolha = 1,
                    adv = gerarTipo(),
                    if(adv==0)
                    {
                      res = "empatou"
                    }
                    else if(adv==1)
                    {
                      res = "perdeu"
                    }
                    else
                    {
                      res = "ganhou"
                    },
                    setState(() {}),
                  },
                ),
                SizedBox(width: 20,),
                GestureDetector(
                  child:                
                    SizedBox(
                      width: 100,
                      child: Image.asset(lista[1]),
                  ),
                  onTap: () => {
                    escolha = 2,
                    adv = gerarTipo(),
                    if(adv==0)
                    {
                      res = "ganhou"
                    }
                    else if(adv==1)
                    {
                      res = "empatou"
                    }
                    else
                    {
                      res = "perdeu"
                    },
                    setState(() {}),
                  },
                ),
                SizedBox(width: 25,),
                GestureDetector(
                  child:                
                    SizedBox(
                      width: 100,
                      child: Image.asset(lista[2]),
                  ),
                  onTap: () => {
                    escolha = 3,
                    adv = gerarTipo(),     
                    if(adv==0)
                    {
                      res = "perdeu"
                    }
                    else if(adv==1)
                    {
                      res = "ganhou"
                    }
                    else
                    {
                      res = "empatou"
                    },              
                    setState(() {}),
                  },
                ),
              ],
            ),
            Text("Você: " + res)
          ],
        ),
      ),
    );
  }
}
