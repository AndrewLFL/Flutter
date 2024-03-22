// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  TextEditingController controlador01 = TextEditingController();
  TextEditingController controlador02 = TextEditingController();

  String text01 = "";
  String text02 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Formulário",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 40, 84, 150),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 400,
              child: TextField(
                controller: controlador01,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  labelText: "Username",
                  filled: true,
                  fillColor: Color.fromARGB(255, 248, 248, 248),
                  prefixIcon: Icon(Icons.person_2_outlined),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 400,
              child: TextField(
                controller: controlador02,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: "Password",
                    filled: true,
                    fillColor: Color.fromARGB(255, 248, 248, 248),
                    prefixIcon: Icon(Icons.lock_outlined)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 100,
              child: FloatingActionButton(
                onPressed: () => {
                  text01 = controlador01.text,
                  text02 = controlador02.text,
                  setState(() => {})
                },
                child: Text(
                  "Enviar",
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Colors.black,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Username: " + text01 + "\n\nSenha: " + text02)
          ],
        ),
      ),
    );
  }
}
