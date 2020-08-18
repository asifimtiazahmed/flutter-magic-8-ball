import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Magic 8 Ball'),
            backgroundColor: Colors.teal,
          ),
          body: Magic8Ball(),
          backgroundColor: Colors.white,
        ),
      ),
    );

class Magic8Ball extends StatefulWidget {
  @override
  _Magic8BallState createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {
  int ballNum = 1;
  void randNumGen() {
    ballNum = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Ask Me Anything',
                style: TextStyle(
                  fontSize: 40,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
          Row(
            children: [

              Expanded(

                child: FlatButton(
                  onPressed: (){
                    setState(() {
                      randNumGen();
                      print('ball image num changed to: $ballNum');
                    });
                  },
                  child: Image.asset('images/ball$ballNum.png'),
                ),

              ),
            ],
          ),
        ],
      ),
    );
  }
}
