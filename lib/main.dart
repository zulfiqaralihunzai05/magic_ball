import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Ask Me Anything"),
          centerTitle: true,
          backgroundColor: Colors.blue[900],
        ),
        backgroundColor: Colors.blue[500],
        body: MainSceen(),
      ),
    ),
  );
}

class MainSceen extends StatefulWidget {

  @override
  _MainSceenState createState() => _MainSceenState();
}

class _MainSceenState extends State<MainSceen> {
  int Ball_count = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(

            child: TextButton(
              onPressed: (){
                setState(() {
                  Ball_count = Random().nextInt(5)+1;
                });

              },
              child: Image.asset("images/ball$Ball_count.png"),
            ),
          ),
        ],
      ),
    );
  }
}
