import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(home: BallPage()),
  );
}


class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ask Me Anything',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue[900],
      ),

      body: Ball(),

    );
  }
}
class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballnumber = 1;
  void OnClick() {
    setState(() {
      ballnumber =Random().nextInt(5)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.blue,
      child: Center( child:TextButton(
        onPressed: () {
          OnClick();
          print('I got clicked');
          },

        child: Image.asset('images/ball$ballnumber.png'),)
      ));

  }
}
