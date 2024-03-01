// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyCat extends StatelessWidget {
  const MyCat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 204, 202, 195),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(style: BorderStyle.none),
                color: Color.fromARGB(255, 153, 202, 241),
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Text("Meus gatinhos"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
