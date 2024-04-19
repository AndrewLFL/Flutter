import 'package:flutter/material.dart';

class MyRadio extends StatefulWidget {
  const MyRadio({super.key});

  @override
  State<MyRadio> createState() => _MyRadioState();
}

class _MyRadioState extends State<MyRadio> {
  String pao = "";
  String cblol = "";
  bool aux = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Text("Eu amo pão"),
          Text("SIM"),
          Radio(
              value: "SIM",
              groupValue: pao,
              onChanged: (value) {
                pao = value!;
                setState(() {});
              }),
          Text("NÃO"),
          Radio(
              value: "NÃO",
              groupValue: pao,
              onChanged: (value) {
                pao = value!;
                setState(() {});
              }),
          ElevatedButton(
              onPressed: () {
                print("r = " + pao);
              },
              child: Text("OK")),
          RadioListTile(
              title: Text("Vou ver a final do CBLOL"),
              subtitle: Text("LOUD X PAIN"),
              secondary: Icon(Icons.timer_off_outlined),
              value: "SIM",
              groupValue: cblol,
              onChanged: (value) {
                cblol = value!;
                setState(() {});
              }),
          RadioListTile(
              title: Text("Não vou ver a final do CBLOL"),
              subtitle: Text("Sou painzete"),
              secondary: Icon(Icons.timer_off_outlined),
              value: "NÃO",
              groupValue: cblol,
              onChanged: (value) {
                cblol = value!;
                setState(() {});
              }),
          SwitchListTile(
              title: Text("Teste"),
              value: aux,
              onChanged: (value) {
                aux = value!;
                setState(() {});
              })
        ],
      )),
    );
  }
}
