import 'package:flutter/material.dart';

void main() => runApp(Task11());

class Task11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(child: Image.asset('assets/images/flutter.png')),
      ),
    );
  }
}
