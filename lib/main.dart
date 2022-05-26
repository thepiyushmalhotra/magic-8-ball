// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      const MaterialApp(
        home: Ball(),
      ),
    );

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  var ballNumber = 1;

  void changeBallFace() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[700],
        title: const Text('Magic 8 Ball'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            changeBallFace();
          },
          child: Image(
            image: AssetImage('images/ball$ballNumber.png'),
          ),
        ),
      ),
    );
  }
}
