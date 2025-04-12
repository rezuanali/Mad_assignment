import 'package:flutter/material.dart';

void main() => runApp(Task16());

class Task16 extends StatefulWidget {
  @override
  _Task16State createState() => _Task16State();
}

class _Task16State extends State<Task16> {
  double width = 100;
  double height = 100;
  Color color = Colors.blue;
  BorderRadius borderRadius = BorderRadius.circular(8);

  void changeShape() {
    setState(() {
      width = width == 100 ? 200 : 100;
      height = height == 100 ? 200 : 100;
      color = color == Colors.blue ? Colors.green : Colors.blue;
      borderRadius =
          borderRadius == BorderRadius.circular(8)
              ? BorderRadius.circular(40)
              : BorderRadius.circular(8);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: AnimatedContainer(
            duration: Duration(milliseconds: 500),
            width: width,
            height: height,
            decoration: BoxDecoration(color: color, borderRadius: borderRadius),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: changeShape,
          child: Icon(Icons.transform),
        ),
      ),
    );
  }
}
