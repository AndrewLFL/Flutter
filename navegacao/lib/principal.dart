import 'package:flutter/material.dart';
import 'package:navegacao/favorito.dart';
import 'package:navegacao/pessoa.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Principal"),
        backgroundColor: Colors.amber,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Pessoa("teste"))));
              },
              icon: Icon(Icons.person)),
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Favorito(["ola","pau no cu"]))));
              },
              icon: Icon(Icons.favorite))
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/pessoa');
                },
                child: Icon(Icons.person)),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/favorito');
                },
                child: Icon(Icons.favorite))
          ],
        ),
      ),
    );
  }
}
