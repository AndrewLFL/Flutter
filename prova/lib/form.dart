// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:prova/medico.dart';

class MyForms extends StatefulWidget {
  const MyForms({super.key});

  @override
  State<MyForms> createState() => _MyFormsState();
}

class _MyFormsState extends State<MyForms> {
  TextEditingController controladorNome = TextEditingController();
  TextEditingController controladorCRM = TextEditingController();
  bool residencia = false;
  bool especializacao = false;
  bool posGraduacao = false;
  bool call = false;
  List<Medico> lista = [];
  List<String> formacoes = [];

  void mostrarLista() {
    lista.forEach((element) {
      print("Nome: ${element.nome}");
      print("CRM: ${element.crm}");
      print("Formações: ${element.formacoes}");
      print("Permitir chamadas de emergência: ${element.call}");
      print("");
    });
    print("=====================================");
    print("");
  }

  void cleanForm() {
    controladorNome = TextEditingController();
    controladorCRM = TextEditingController();
    residencia = false;
    especializacao = false;
    posGraduacao = false;
    call = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Hospital Memorial Grey Sloan",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 60, 60, 61),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Cadastro de Médicos",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset("images/doctor.jpg"),
                  SizedBox(
                    height: 25,
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
                    height: 20,
                  ),
                  SizedBox(
                    child: TextField(
                      controller: controladorCRM,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                        labelText: "CRM",
                        filled: true,
                        prefixIcon: Icon(Icons.medical_information),
                        fillColor: Color.fromARGB(255, 248, 248, 248),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Divider(),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Formações:",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  CheckboxListTile(
                      title: Text("Residência"),
                      value: residencia,
                      onChanged: (value) {
                        residencia = value!;
                        setState(() {});
                      }),
                  CheckboxListTile(
                      title: Text("Especialização"),
                      value: especializacao,
                      onChanged: (value) {
                        especializacao = value!;
                        setState(() {});
                      }),
                  CheckboxListTile(
                      title: Text("Pós Graduação"),
                      value: posGraduacao,
                      onChanged: (value) {
                        posGraduacao = value!;
                        setState(() {});
                      }),
                  Divider(),
                  SizedBox(
                    height: 20,
                  ),
                  SwitchListTile(
                      title: Text("Permitir chamadas de emergência"),
                      value: call,
                      onChanged: (value) {
                        call = value;
                        setState(() {});
                      }),
                  Divider(),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: 160,
                            child: FloatingActionButton(
                              onPressed: () {
                                if (residencia) {
                                  formacoes.add("Residência");
                                }
                                ;
                                if (especializacao) {
                                  formacoes.add("Especialização");
                                }
                                ;
                                if (posGraduacao) {
                                  formacoes.add("Pós Graduação");
                                }
                                ;
                                lista.add(Medico(controladorNome.text,
                                    controladorCRM.text, formacoes, call));
                                cleanForm();
                                formacoes = [];
                                mostrarLista();
                                setState(() {});
                              },
                              child: Text(
                                "Cadastrar",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                              backgroundColor: Color.fromARGB(255, 60, 60, 61),
                            )),
                        SizedBox(
                            width: 160,
                            child: FloatingActionButton(
                              onPressed: () {
                                cleanForm();
                                setState(() {});
                              },
                              child: Text(
                                "Cancelar",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                              backgroundColor: Color.fromARGB(255, 60, 60, 61),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
