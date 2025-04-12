import 'package:flutter/material.dart';

void main() => runApp(Task14());

class Task14 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SwipeList());
  }
}

class SwipeList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder:
            (context, index) => Dismissible(
              key: Key(index.toString()),
              background: Container(
                color: Colors.red,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 20),
                child: Icon(Icons.delete),
              ),
              secondaryBackground: Container(
                color: Colors.green,
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(right: 20),
                child: Icon(Icons.edit),
              ),
              onDismissed: (direction) {},
              child: ListTile(title: Text('Item ${index + 1}')),
            ),
      ),
    );
  }
}
