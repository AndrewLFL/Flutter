import 'package:ex_array/aluno.dart';
import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  TextEditingController raController = TextEditingController();
  TextEditingController nomeController = TextEditingController();
  List<Aluno> lista = [];
  bool masc = false;
  bool fem = false;
  bool outros = false;

  void mostrar() {
    lista.forEach((Aluno a) {
      print(a.ra.toString() + "" + a.nome);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 400,
              child: TextField(
                controller: raController,
                decoration: InputDecoration(
                  labelText: "Digite o RA",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 400,
              child: TextField(
                controller: nomeController,
                decoration: InputDecoration(
                  labelText: "Digite o Nome",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Homem: "),
                Checkbox(
                    value: masc,
                    onChanged: (value) {
                      masc = value!;
                      setState(() {});
                    }),
                SizedBox(
                  width: 50,
                ),
                Text("Mulher: "),
                Checkbox(
                    value: fem,
                    onChanged: (value) {
                      fem = value!;
                      setState(() {});
                    }),
                SizedBox(
                  width: 50,
                ),
              ],
            ),
            CheckboxListTile(
                value: outros,
                title: Text("teste"),
                subtitle: Text("isso é um teste"),
                onChanged: (value) {
                  outros = value!;
                  setState(() {});
                }),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  int ra = int.parse(raController.text);
                  String nome = nomeController.text;
                  Aluno al = Aluno(ra, nome);
                  lista.add(al);
                  mostrar();
                },
                child: Text("Cadastrar")),
          ],
        ),
      ),
    );
  }
}
