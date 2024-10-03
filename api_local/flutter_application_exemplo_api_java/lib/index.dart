// ignore_for_file: duplicate_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_exemplo_api_java/aluno.dart';
import 'package:flutter_application_exemplo_api_java/repository.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MyAPI extends StatefulWidget {
  const MyAPI({super.key});

  @override
  State<MyAPI> createState() => _MyAPIState();
}

class _MyAPIState extends State<MyAPI> {
  Aluno al = Aluno();
  AlunoRepository alRepo = AlunoRepository();

  Future<void> fazerRequisicao() async{
    var url = Uri.parse('http://localhost:8090/apiAluno/todos');
    http.Response response = await http.get(url);
    if(response.statusCode==200){
      List listaAl = jsonDecode(response.body) as List;
      alRepo.listaAl = listaAl.map(
        (listaAl) => Aluno.fromJson(listaAl)).toList();
        setState(() {
          
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    fazerRequisicao();
    return Scaffold(
      appBar: AppBar(title: Text("Teste API local",style: TextStyle(fontWeight: FontWeight.bold),),centerTitle: true,backgroundColor: Colors.orange,),
      body: ListView.builder(
        itemCount: alRepo.listaAl.length,
          itemBuilder: (context, index){
            return ListTile(
              title: Text(alRepo.listaAl[index].nome.toString()),
              subtitle: Text(alRepo.listaAl[index].ra.toString()),
            );
          }
        ),
    );
  }
}