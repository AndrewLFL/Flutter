import 'package:flutter/material.dart';
import 'package:steam/home.dart';
import 'package:steam/metroidvania.dart';
import 'package:steam/roguelike.dart';
import 'package:steam/rpg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => Home(),
        '/rpg': (context) => Rpg(),
        '/roguelike': (context) => Roguelike(),
        '/metroidvania': (context) => Metroidvania()
      },
    );
  }
}
