import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MagicBall());

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballNumber = 1;

  void changeBallNumber (){
    ballNumber = Random().nextInt(5) +1;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent[700],
        body: Center(
          child: FlatButton(
            onPressed: (){
              setState((){
                changeBallNumber();
              });
            },
            child: Image.asset('images/ball$ballNumber.png'),
            ),
        ),
      ),
    );
  }
}
