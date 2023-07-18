import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple[300],
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.purple[600],
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int topDie=5;
  int bottomDie=1;

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Column(
        children: [
          Expanded(child: TextButton(child: Image.asset("images/dice$topDie.png"),
              onPressed: (){
                setState(() {
                  topDie= Random().nextInt(6) +1;
                });
              }),),
          Expanded(child: TextButton(child: Image.asset("images/dice$bottomDie.png"),
            onPressed: (){
              setState(() {
                bottomDie= Random().nextInt(6) +1;
              });
            },),),
        ],
      ),
    );
  }
}



