import 'package:flutter/material.dart';

void main() => runApp(Task3());

class Task3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
          itemCount: 20,
          itemBuilder:
              (context, index) => ListTile(title: Text('Item ${index + 1}')),
        ),
      ),
    );
  }
}
