import 'package:flutter/material.dart';

class MyGasStation extends StatefulWidget {
  const MyGasStation({super.key});

  @override
  State<MyGasStation> createState() => _MyGasStationState();
}

class _MyGasStationState extends State<MyGasStation> {
  TextEditingController controlador01 = TextEditingController();
  TextEditingController controlador02 = TextEditingController();
  double alcool = 0;
  double gasolina = 0;
  String resp = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Álcool ou Gasolina",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 240, 41, 27),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 40),
            SizedBox(
              width: 300,
              child: Image.asset("images/shell.png"),
            ),
            SizedBox(height: 40),
            SizedBox(
              width: 400,
              child: TextField(
                controller: controlador01,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  labelText: "Digite o preço do litro do álcool",
                  filled: true,
                  prefixIcon: Icon(Icons.monetization_on),
                  fillColor: Color.fromARGB(255, 248, 248, 248),
                ),
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              width: 400,
              child: TextField(
                controller: controlador02,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  labelText: "Digite o preço do litro da gasolina",
                  filled: true,
                  prefixIcon: Icon(Icons.monetization_on),
                  fillColor: Color.fromARGB(255, 248, 248, 248),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
                width: 200,
                child: FloatingActionButton(
                  onPressed: () => {
                    if (controlador02.text != "" && controlador01.text != "")
                      {
                        gasolina = double.parse(controlador02.text),
                        alcool = double.parse(controlador01.text),
                        if (alcool / gasolina <= 0.7)
                          {resp = "É mais vantajoso abastecer com álcool!"}
                        else
                          {resp = "É mais vantajoso abastecer com gasolina!"}
                      }
                    else
                      {resp = "Insira os valores do álcool e da gasolina!"},
                    setState(() => {}),
                  },
                  child: Text(
                    "Calcular",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  backgroundColor: Color.fromARGB(255, 240, 41, 27),
                )),
            SizedBox(
              height: 30,
            ),
            Text(
              resp,
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
