// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:form/aluno.dart';

class MyForms extends StatefulWidget {
  const MyForms({super.key});

  @override
  State<MyForms> createState() => _MyFormsState();
}

class _MyFormsState extends State<MyForms> {
  TextEditingController controladorNome = TextEditingController();
  TextEditingController controladorEmail = TextEditingController();
  String curso = "";
  bool escrita = false;
  bool literatura = false;
  bool artes = false;
  bool noti = false;
  List<String> interesse = [];
  List<Aluno> lista = [];

  void mostrarLista()
  {
    lista.forEach((element) {
      print("Nome: ${element.nome}");
      print("Email: ${element.email}");
      print("Curso: ${element.curso}");
      print("Interesse: ${element.interesse}");
      print("Receber notificação: ${element.noti}");
      print("");

    });
    print("=====================================");
    print("");
  }

  void cleanForm() {
    controladorNome = TextEditingController();
    controladorEmail = TextEditingController();
    curso = "";
    escrita = false;
    literatura = false;
    artes = false;
    noti = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Formulário de interesse em oficinas",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 45, 41, 228),
        ),
        body: SingleChildScrollView(
          child: Center(
              child: Padding(
            padding: EdgeInsets.all(40),
            child: Column(
              children: [
                SizedBox(
                  child: Image.asset("images/school.png"),
                  width: 400,
                ),
                SizedBox(
                  height: 20,
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
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  child: TextField(
                    controller: controladorEmail,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                      labelText: "Email",
                      filled: true,
                      prefixIcon: Icon(Icons.mail),
                      fillColor: Color.fromARGB(255, 248, 248, 248),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Tipo de Cursos:",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Somente Técnico"),
                    Radio(
                        value: "CT",
                        groupValue: curso,
                        onChanged: (value) {
                          curso = value!;
                          setState(() {});
                        }),
                    SizedBox(
                      width: 50,
                    ),
                    Text("Integrado ao Médio"),
                    Radio(
                        value: "MT",
                        groupValue: curso,
                        onChanged: (value) {
                          curso = value!;
                          setState(() {});
                        })
                  ],
                ),
                Divider(),
                SizedBox(
                  height: 20,
                ),
                Text("Oficinas de Interesse:",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                CheckboxListTile(
                    title: Text("Escrita Científica"),
                    value: escrita,
                    onChanged: (value) {
                      escrita = value!;
                      setState(() {});
                    }),
                CheckboxListTile(
                    title: Text("Literatura Africana"),
                    value: literatura,
                    onChanged: (value) {
                      literatura = value!;
                      setState(() {});
                    }),
                CheckboxListTile(
                    title: Text("Artes"),
                    value: artes,
                    onChanged: (value) {
                      artes = value!;
                      setState(() {});
                    }),
                Divider(),
                SizedBox(
                  height: 20,
                ),
                SwitchListTile(
                    title: Text("Permitir envio de notificações no email"),
                    value: noti,
                    onChanged: (value) {
                      noti = value;
                      setState(() {});
                    }),
                Divider(),
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
                              if(escrita)
                              {
                                interesse.add("Escrita Científica");
                              };
                              if(literatura)
                              {
                                interesse.add("Literatura Africana");
                              };
                              if(artes)
                              {
                                interesse.add("Artes");
                              };
                              lista.add(Aluno(
                                  controladorNome.text,
                                  controladorEmail.text,
                                  curso,
                                  interesse,
                                  noti));
                              cleanForm();
                              interesse = [];
                              mostrarLista();
                              setState(() {});
                            },
                            child: Text(
                              "Enviar",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            backgroundColor: Color.fromARGB(255, 48, 27, 240),
                          )),
                      SizedBox(
                          width: 120,
                          child: FloatingActionButton(
                            onPressed: () {
                              cleanForm();
                              setState(() {});
                            },
                            child: Text(
                              "Cancelar",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            backgroundColor: Color.fromARGB(255, 48, 27, 240),
                          ))
                    ],
                  ),
                )
              ],
            ),
          )),
        ));
  }
}
