import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          backgroundColor: Colors.lightBlue[900],
          title: Text('Ask Me Anything'),
        ),
        body: MagicBall(),
      ),
    );
  }
}

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int magicBall = 1;
  void changeMagicBallFace() {
    setState(() {
      magicBall = Random().nextInt(5) + 1;
    });
    
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: GestureDetector(
          onTap: changeMagicBallFace,
          child: Image.asset('images/ball$magicBall.png'),
        ), 
      ),
    );
  }
}
