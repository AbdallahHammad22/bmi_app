// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final int result;
  final int age;
  final bool isMeal;

  const ResultScreen({
    required this.result,
    required this.age,
    required this.isMeal,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // ignore: unnecessary_new
      theme: new ThemeData(
        primarySwatch: Colors.pink,
        canvasColor: Color.fromRGBO(2, 19, 35, 1),
        textTheme: ThemeData.light().textTheme.copyWith(),
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(2, 19, 35, 1),
          title: Text("                      Result"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Gender : ${isMeal ? 'meal' : 'female'}',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                'Result : $result',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                'Age : $age ',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
