import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(
  MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: Text('Dicee'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Ball8(),
    ),
  ),
    );

class Ball8 extends StatefulWidget {
  @override
  _Ball8State createState() => _Ball8State();
}

class _Ball8State extends State<Ball8> {

  int ballNumber = 5;


  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                Ubah();
              },
              child: Image.asset('images/ball$ballNumber.png'),
            ),
          ),

        ],
      ),
    );
  }

  void Ubah(){
    setState(() {
      ballNumber = Random().nextInt(5) + 1;


      print('Button pressed');
    });

  }
}

