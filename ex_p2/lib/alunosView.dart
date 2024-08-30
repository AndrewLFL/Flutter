// ignore_for_file: prefer_const_constructors, sort_child_properties_last, must_be_immutable

import 'package:ex_p2/aluno.dart';
import 'package:flutter/material.dart';

class Alunosview extends StatefulWidget {
  List<Aluno> alunos = [];
  Alunosview(this.alunos, {super.key});

  @override
  State<Alunosview> createState() => _AlunosviewState();
}

class _AlunosviewState extends State<Alunosview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alunos', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          SizedBox(
            child: Image.asset("images/cotil.png"),
            width: 450,
          ),
          SizedBox(
            height: 50,
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(widget.alunos[index].nome),
                    subtitle: Text(widget.alunos[index].ra),
                    leading: Icon(Icons.person),
                  );
                },
                separatorBuilder: (context, index) => Divider(
                      thickness: 1,
                    ),
                itemCount: widget.alunos.length),
          ),
          Divider(
            thickness: 1,
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
              width: 120,
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Voltar",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                backgroundColor: Colors.deepPurple,
              )),
          SizedBox(
            height: 20,
          )
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
