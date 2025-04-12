import 'package:flutter/material.dart';

void main() => runApp(Task13());

class Task13 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Padding(padding: EdgeInsets.all(8), child: FlutterLogo()),
          title: Text('Custom AppBar'),
          actions: [
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
            IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
          ],
        ),
        body: Center(child: Text('AppBar Example')),
      ),
    );
  }
}
