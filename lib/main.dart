import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var ball=1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Ask Me Anything"),
          centerTitle: true,
        ),
        backgroundColor: Colors.blue,
        body: Center(
          child: Container(
            width: 400,
            height: 400,
            child: TextButton(
                onPressed: (){
                  setState(() {
                    ball=Random().nextInt(5)+1;
                  });
                },
                child: Image.asset('images/ball${ball}.png'),
            ),
          ),
        ),
      ),
    );
  }
}
















