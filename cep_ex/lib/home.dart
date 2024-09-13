import 'dart:convert';
import 'dart:math';

import 'package:cep_ex/endereco.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController control = TextEditingController();
  Text text = Text('');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Descubra o Endereço'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                controller: control,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Digite o CEP',
                ),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () async {
                var cep = control.text;
                var url = 'https://viacep.com.br/ws/$cep/json/';
                if (cep.length != 8) {
                  text = Text('CEP inválido');
                  setState(() {});
                  return;
                }
                if (int.tryParse(cep) == null) {
                  text = Text('CEP inválido');
                  setState(() {});
                  return;
                }
                http.Response response = await http.get(Uri.parse(url));
                print(response.body);
                if (response.statusCode == 200) {
                  Map<String, dynamic> data = jsonDecode(response.body);
                  if (data['erro'] == "true") {
                    text = Text('CEP não encontrado');
                    setState(() {});
                    return;
                  }
                  Endereco endereco = Endereco(
                    logradouro: data['logradouro'],
                    bairro: data['bairro'],
                    estado: data['uf'],
                    regiao: data['localidade'],
                    ddd: data['ddd'],
                  );
                  text = Text(
                      'Logradouro: ${endereco.logradouro}\nBairro: ${endereco.bairro}\nEstado: ${endereco.estado}\nRegião: ${endereco.regiao}\nDDD: ${endereco.ddd}');
                  setState(() {});
                } else {
                  text = Text('CEP não encontrado');
                  setState(() {});
                }
                setState(() {});
              },
              child: Text('Buscar'),
            ),
            SizedBox(height: 20),
            Divider(),
            SizedBox(height: 10),
            text,
          ],
        ),
      ),
    );
  }
}
