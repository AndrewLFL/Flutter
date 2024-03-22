// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class MyOperator extends StatefulWidget {
  const MyOperator({super.key});

  @override
  State<MyOperator> createState() => _MyOperatorState();
}

class _MyOperatorState extends State<MyOperator> {
  TextEditingController controlador01 = TextEditingController();
  TextEditingController controlador02 = TextEditingController();

  double n1 = 0;
  double n2 = 0;
  String res = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Operações",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 40, 84, 150),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Insira os valores e selecione uma operação para realizar a conta:",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 400,
              child: TextField(
                controller: controlador01,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  labelText: "Valor 01",
                  filled: true,
                  fillColor: Color.fromARGB(255, 248, 248, 248),
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
                  labelText: "Valor 02",
                  filled: true,
                  fillColor: Color.fromARGB(255, 248, 248, 248),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 50,
                  child: FloatingActionButton(
                    onPressed: () => {
                      n1 = double.parse(controlador01.text),
                      n2 = double.parse(controlador02.text),
                      res = (n1 + n2).toString(),
                      setState(() => {})
                    },
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    backgroundColor: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                SizedBox(
                  width: 50,
                  child: FloatingActionButton(
                    onPressed: () => {
                      n1 = double.parse(controlador01.text),
                      n2 = double.parse(controlador02.text),
                      res = (n1 - n2).toString(),
                      setState(() => {})
                    },
                    child: Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                    backgroundColor: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                SizedBox(
                  width: 50,
                  child: FloatingActionButton(
                    onPressed: () => {
                      n1 = double.parse(controlador01.text),
                      n2 = double.parse(controlador02.text),
                      res = (n1 * n2).toString(),
                      setState(() => {})
                    },
                    child: Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                    backgroundColor: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                SizedBox(
                  width: 50,
                  child: FloatingActionButton(
                    onPressed: () => {
                      n1 = double.parse(controlador01.text),
                      n2 = double.parse(controlador02.text),
                      res = (n1 / n2).toString(),
                      setState(() => {})
                    },
                    child: Text(
                      "/",
                      style: TextStyle(color: Colors.white, fontSize: 26),
                    ),
                    backgroundColor: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                SizedBox(
                  width: 50,
                  child: FloatingActionButton(
                    onPressed: () => {
                      controlador01.clear(),
                      controlador02.clear(),
                      res = "",
                      setState(() => {})
                    },
                    child: Text(
                      "CE",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    backgroundColor: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Resultado: " + res,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
