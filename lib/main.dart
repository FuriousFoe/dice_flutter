import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Dice"),
        backgroundColor: Colors.blue,
      ),
      body: Dicepage(),
    ),
  ));
}

class Dicepage extends StatefulWidget {
  const Dicepage({super.key});

  @override
  State<Dicepage> createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  int left = 1;
  int right = 2;

  void set(){
    left = Random().nextInt(6) +1 ;
    right = Random().nextInt(6)+1 ;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  set();
                });
              },
              child: Image.asset('images/dice$left.png'),
            ),
          ),
          Expanded(
              child: TextButton(
                  onPressed: (){
                    setState(() {
                      set();
                    });
                  }, 
                  child: Image.asset('images/dice$right.png'))),
        ],
      ),
    ));
  }
}
