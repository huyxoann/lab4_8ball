import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title:const Text('Ask Me Anything',),
        centerTitle: true,
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber=1;
  void changeBallFace(){
    setState(() {
      ballNumber=Random().nextInt(5)+1;// from 0 to 4 and +1
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(onPressed: () => changeBallFace(),child: Image.asset('images/ball$ballNumber.png')),
    );
  }
}