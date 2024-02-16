// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyDog extends StatelessWidget {
  const MyDog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Meus cachorros"),
          backgroundColor: const Color.fromARGB(255, 206, 191, 145)),
      backgroundColor: Color.fromARGB(255, 255, 248, 225),
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 206, 191, 145),
        height: 50,
        child: Text("Vamos ver os cachorrinhos", style: TextStyle(fontSize: 20), textAlign: TextAlign.center ),
      ),
      body: SingleChildScrollView( 
        child:     
          Center(child: Column(children: [
          SizedBox(height: 15,),
          Text("Apolo"),
          SizedBox(height: 15,),
          Text("Ted"),
          SizedBox(height: 15,),
          Text("Akita"),
          SizedBox(height: 300, width: 300, child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbZTp2jFc9gNfUnsVS4XhDZa-_84ckImxwvA&usqp=CAU")),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("sdsadsad"),
            SizedBox(width: 20,),
            Text("ewqewqea"),
            SizedBox(width: 20,),
            Text("fdasdadas"),
            SizedBox(width: 20,),
        ],),
        SizedBox(height: 300, width: 300, child: Image.network("https://cdn.pixabay.com/photo/2016/10/10/14/13/dog-1728494_640.png")),
        SizedBox(height: 300, width: 300, child: Image.network("https://cdn.pixabay.com/photo/2016/02/11/16/59/dog-1194083_640.jpg")),

      ],),),)

      
      

    );
  }
}
