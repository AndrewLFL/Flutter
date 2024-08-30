// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:ex_p2/aluno.dart';
import 'package:ex_p2/alunosView.dart';
import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  TextEditingController controladorNome = TextEditingController();
  TextEditingController controladorRa = TextEditingController();
  String nome = "";
  String ra = "";
  List<Aluno> alunos = [];

  void cleanForm() {
    controladorNome = TextEditingController();
    controladorRa = TextEditingController();
    nome = "";
    ra = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro de Alunos',
            style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.deepPurple,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => Alunosview(alunos))));
              },
              icon: Icon(Icons.view_agenda, color: Colors.white)),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Column(
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
            SizedBox(
              child: TextField(
                controller: controladorNome,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  labelText: "Nome",
                  filled: true,
                  prefixIcon: Icon(Icons.person),
                  fillColor: Color.fromARGB(255, 248, 248, 248),
                ),
              ),
              width: 450,
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              child: TextField(
                controller: controladorRa,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  labelText: "RA",
                  filled: true,
                  prefixIcon: Icon(Icons.app_registration_rounded),
                  fillColor: Color.fromARGB(255, 248, 248, 248),
                ),
              ),
              width: 450,
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      width: 120,
                      child: FloatingActionButton(
                        onPressed: () {
                          setState(() {
                            nome = controladorNome.text;
                            ra = controladorRa.text;
                            alunos.add(Aluno(nome, ra));
                            cleanForm();
                            setState(() {});
                          });
                        },
                        child: Text(
                          "Cadastrar",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        backgroundColor: Colors.deepPurple,
                      )),
                  SizedBox(
                      width: 120,
                      child: FloatingActionButton(
                        onPressed: () {
                          cleanForm();
                          setState(() {});
                        },
                        child: Text(
                          "Limpar",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        backgroundColor: Colors.deepPurple,
                      ))
                ],
              ),
            )
          ],
        )),
      ),
      backgroundColor: Colors.white,
    );
  }
}
