// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyBird extends StatelessWidget {
  final img = SizedBox(
    child: Image.asset("images/download.jpg"),
    width: 200,
    height: 200,
  );
  final txt = Text(
    "Pidgey",
    style: TextStyle(fontFamily: 'Annapurna'),
  );

  MyBird({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [img, txt],
        ),
      ),
    );
  }
}
