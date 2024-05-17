
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Locadora Blockbuster",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          )
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 5, 73, 129),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/blockbuster_logo.jpg"),
              fit: BoxFit.cover,
              opacity: 0.95),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text("Escolha o estúdio de sua preferência",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 200,
              child: GestureDetector(
                child: Image.asset("images/Studio_Ghibli.png"),
                onTap: () {
                  Navigator.pushNamed(context, '/ghibli');
                },
              ),
            ),
            SizedBox(
              height: 70,
            ),
            SizedBox(
              width: 250,
              child: GestureDetector(
                child: Image.asset("images/marvel.png"),
                onTap: () {
                  Navigator.pushNamed(context, '/marvel');
                },
              ),
            ),
            SizedBox(
              height: 70,
            ),
            SizedBox(
              width: 250,
              child: GestureDetector(
                child: Image.asset("images/pixar.png"),
                onTap: () {
                  Navigator.pushNamed(context, '/pixar');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
