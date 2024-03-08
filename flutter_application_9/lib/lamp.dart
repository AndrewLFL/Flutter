// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:html';

import 'package:flutter/material.dart';

class MyLamp extends StatefulWidget {
  const MyLamp({super.key});

  @override
  State<MyLamp> createState() => _MyLampState();
}

class _MyLampState extends State<MyLamp> {
  Image alavancaDown = Image.asset('images/alavancaDown.png');
  Image alavancaUp = Image.asset('images/alavancaUp.png');
  late Image alavancaAx = alavancaDown;
  Image lampOn = Image.asset('images/on.png');
  Image lampOff = Image.asset(
    'images/off.png',
    width: 360,
  );
  late Image lampAx = lampOff;
  Image redstoneOn = Image.asset('images/redstoneOn.png');
  Image redstoneOff = Image.asset('images/redstoneOff.png');
  late Image redstoneAx = redstoneOff;

  void changeLamp() {
    if (lampAx == lampOff) {
      lampAx = lampOn;
      redstoneAx = redstoneOn;
      alavancaAx = alavancaUp;
    } else {
      lampAx = lampOff;
      redstoneAx = redstoneOff;
      alavancaAx = alavancaDown;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            lampAx,
            redstoneAx,
            ElevatedButton(
              onPressed: () => {changeLamp(), setState(() {})},
              child: alavancaAx,
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                  side: BorderSide()),
            )
          ],
        ),
      ),
    );
  }
}
