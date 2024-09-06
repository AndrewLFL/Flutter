import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Request extends StatefulWidget {
  const Request({super.key});

  @override
  State<Request> createState() => _RequestState();
}

class _RequestState extends State<Request> {
  var userId;
  var taskId;
  var title;
  var completed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Request Example'),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: () async {
              http.Response response = await http.get(
                  Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
              if (response.statusCode == 200) {
                Map<String, dynamic> data = jsonDecode(response.body);
                setState(() {
                  userId = data['userId'];
                  taskId = data['id'];
                  title = data['title'];
                  completed = data['completed'];
                });
              } else {
                throw Exception('Failed to load data');
              }
            },
            child: const Text('Make Request'),
          ),
          SizedBox(height: 20),
          userId != null
              ? Column(
                  children: [
                    Text('User ID: $userId'),
                    Text('Task ID: $taskId'),
                    Text('Title: $title'),
                    Text('Completed: $completed'),
                  ],
                )
              : Text(''),
        ],
      )),
    );
  }
}
