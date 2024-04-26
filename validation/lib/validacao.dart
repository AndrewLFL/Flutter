import 'package:flutter/material.dart';

class MyValidation extends StatefulWidget {
  const MyValidation({super.key});

  @override
  State<MyValidation> createState() => _MyValidationState();
}

class _MyValidationState extends State<MyValidation> {
  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController control = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                controller: control,
                decoration: InputDecoration(labelText: "RA"),
                validator: (value) {
                  if (value!.isEmpty) {
                    return ("O RA não pode ser vazio");
                  } else {
                    if (int.parse(control.text) < 10) {
                      return ("O RA deve ser maior que 10");
                    }
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
