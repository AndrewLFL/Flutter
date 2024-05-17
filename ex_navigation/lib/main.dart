
import 'package:ex_navigation/filme.dart';
import 'package:ex_navigation/ghibli.dart';
import 'package:ex_navigation/home.dart';
import 'package:ex_navigation/marvel.dart';
import 'package:ex_navigation/pixar.dart';
import 'package:flutter/material.dart';

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
        '/ghibli': (context) => Ghibli([Filme("O Castelo Animado","images/howl.jpg",7.99), 
                                        Filme("A Viagem de Chihiro","images/chihiro.jpg",10.99), 
                                        Filme("O Serviço de Entregas da Kiki","images/kiki.jpg",6.99)]),
        '/marvel': (context) => Marvel([Filme("Vingadores Guerra Infinita","images/vgi.jpg",7.99), 
                                        Filme("Vingadores Ultimato","images/vu.jpg",10.99), 
                                        Filme("Guardiões da Galáxia","images/gg.jpg",6.99)]),
        '/pixar': (context) => Pixar([Filme("Divertidamente","images/divertidamente.jpg",7.99), 
                                      Filme("Monstros S.A.","images/monstros.jpg",10.99), 
                                      Filme("Valente","images/valente.jpg",6.99)]),
      },    
    );
  }
}
