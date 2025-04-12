import 'package:flutter/material.dart';

void main() => runApp(Task2());

class Task2 extends StatefulWidget {
  @override
  _Task2State createState() => _Task2State();
}

class _Task2State extends State<Task2> {
  String text = 'Press the Button';

  void updateText() {
    setState(() {
      text = 'Button Pressed';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(child: Text(text)),
        floatingActionButton: FloatingActionButton(
          onPressed: updateText,
          child: Icon(Icons.touch_app),
        ),
      ),
    );
  }
}
