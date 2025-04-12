import 'package:flutter/material.dart';

void main() => runApp(Task4());

class Task4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Big Bold',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                'Italic Text',
                style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
              ),
              Text(
                'Colored Text',
                style: TextStyle(fontSize: 20, color: Colors.teal),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
