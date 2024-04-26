import 'package:flutter/material.dart';
import 'package:login/user.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  List<User> lista = [
    User("Andrew", "123456789"),
    User("Hugo", "4815162342"),
    User("Robert", "987654321")
  ];
  bool aux = false;

  void cleanForm() {
    usernameController = TextEditingController();
    passwordController = TextEditingController();
  }

  Future<void> approved() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Bem vindo de volta!!!'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(""),
              ],
            ),
          ),
          backgroundColor: Colors.white,
          actions: <Widget>[
            TextButton(
              child: const Text('Approve'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> denied() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Nome de usuário ou senha inválidos'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[],
            ),
          ),
          backgroundColor: Colors.white,
          actions: <Widget>[
            TextButton(
              child: const Text('Approve'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
        padding: EdgeInsets.all(30),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              SizedBox(
                width: 300,
                child: Image.asset("images/lock.png"),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Login",
                style: TextStyle(fontSize: 30),
              ),
              Divider(),
              SizedBox(
                height: 25,
              ),
              TextFormField(
                controller: usernameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  labelText: "Username",
                  filled: true,
                  prefixIcon: Icon(Icons.person),
                  fillColor: Color.fromARGB(255, 248, 248, 248),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return ("O nome de usuário não pode ser vazio");
                  }
                },
              ),
              SizedBox(
                height: 35,
              ),
              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  labelText: "Password",
                  filled: true,
                  prefixIcon: Icon(Icons.lock),
                  fillColor: Color.fromARGB(255, 248, 248, 248),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return ("A senha não pode ser vazia");
                  }
                  if (passwordController.text.length < 4) {
                    return ("A senha tem que ter mais de 3 caracteres");
                  }
                },
              ),
              SizedBox(
                height: 35,
              ),
              SizedBox(
                  width: 500,
                  child: FloatingActionButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        lista.forEach((element) => {
                              if (element.username == usernameController.text &&
                                  element.password == passwordController.text)
                                {aux = true},
                            });
                        if (aux) {
                          approved();
                          print("Bem vindo " + usernameController.text);
                        } else {
                          denied();
                          print("Nome de usuário ou senha inválidos");
                        }
                        aux = false;
                        cleanForm();
                        setState(() {});
                      }
                    },
                    child: Text(
                      "Submit",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    backgroundColor: Color.fromARGB(255, 49, 46, 56),
                  ))
            ],
          ),
        ),
      )),
    );
  }
}
