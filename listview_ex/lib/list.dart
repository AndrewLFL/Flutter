// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import 'aluno.dart';

class MyList extends StatefulWidget {
  const MyList({super.key});

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  List<Aluno> alunos = [
    Aluno('João', 123),
    Aluno('Maria', 456),
    Aluno('José', 789),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('List View Example'),
          backgroundColor: Colors.amber,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(alunos[index].nome),
                subtitle: Text(alunos[index].ra.toString()),
                leading: Icon(Icons.ac_unit),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () => print('Item $index tapped'),
              );
            },
            separatorBuilder: (context, index) => Divider(
                  thickness: 3,
                ),
            itemCount: alunos.length));
  }
}
