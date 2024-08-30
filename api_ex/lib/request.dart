import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Request extends StatefulWidget {
  const Request({super.key});

  @override
  State<Request> createState() => _RequestState();
}

class _RequestState extends State<Request> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Request Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            http.Response response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
            if (response.statusCode == 200) {
              print(response.body);
            } else {
              throw Exception('Failed to load data');
            }
          },
          child: const Text('Make Request'),
        ),
      ),
    );
  }
}
