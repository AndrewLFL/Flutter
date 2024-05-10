import 'package:flutter/material.dart';

class Pessoa extends StatefulWidget {
  String frase = "";
  Pessoa(this.frase, {super.key});

  @override
  State<Pessoa> createState() => _PessoaState();
}

class _PessoaState extends State<Pessoa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pessoa"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            Text(widget.frase),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("voltar"))
          ],
        ),
      ),
    );
  }
}
