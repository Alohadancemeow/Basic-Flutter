import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  // var app = MaterialApp(
  //   title: "My app",
  //   home: Text("My App"),
  // );
  runApp(MyApp());
}

//นิ่งๆ ไม่มีการเปลี่ยนแปลงใช้ stateless
//create myapp (stateless)
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Propreties
      title: "my app",
      theme: ThemeData(primarySwatch: Colors.green),
      home: CounterArea(), //call CounterArea
    );
  }
}

//มีการเปลี่ยนแปลงใช้ stateful
//create couter area (stateful)
class CounterArea extends StatefulWidget {
  @override
  _CounterAreaState createState() => _CounterAreaState();
}

class _CounterAreaState extends State<CounterArea> {
  //save number
  int _count = 0; //private variable.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Hello there",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            "$_count",
            style: TextStyle(fontSize: 50, color: Colors.grey),
          )
        ],
      )),

      //add fab
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        elevation: 20.0,
        onPressed: onCounter, //call method.
      ),
    );
  }

  void onCounter() {
    //ใช้ setState ตรงส่วนที่มีการเปลี่ยนแปลง
    setState(() {
      _count++;
    });

    log("$_count");
  }
}
