import 'package:flutter/material.dart';

void main() => runApp(Task17());

class Task17 extends StatefulWidget {
  @override
  _Task17State createState() => _Task17State();
}

class _Task17State extends State<Task17> {
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: darkMode ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(title: Text('Settings')),
        body: SwitchListTile(
          title: Text('Dark Mode'),
          value: darkMode,
          onChanged: (val) {
            setState(() {
              darkMode = val;
            });
          },
        ),
      ),
    );
  }
}
