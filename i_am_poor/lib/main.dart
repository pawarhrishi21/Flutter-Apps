import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('I am Poor'),
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/Coal.png'),
          ),
        ),
      ),
    ),
  );
}
