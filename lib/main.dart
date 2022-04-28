import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftno = 1;
  var rightno = 6;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(

            child: TextButton(
                onPressed: () {
                  setState(() {
                    leftno= Random().nextInt(6)+1;
                  });
                },
                child: Image.asset('images/dice$leftno.png')),
          ),
          Expanded(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      rightno= Random().nextInt(6)+1;
                    });
                  },
                  child: Image.asset('images/dice$rightno.png')))

        ],
      ),
    );
  }
}
