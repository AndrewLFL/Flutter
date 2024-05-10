import 'package:flutter/material.dart';
import 'package:navegacao/favorito.dart';
import 'package:navegacao/pessoa.dart';
import 'package:navegacao/principal.dart';

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
      //home: Principal(),
      routes: {
        '/': (context) => Principal(),
        '/pessoa': (context) => Pessoa("main/principal"),
        '/favorito': (context) => Favorito(["BIXO", "FEIO"]),
      },
    );
  }
}
