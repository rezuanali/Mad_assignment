import 'package:flutter/material.dart';

void main() => runApp(Task7());

class Task7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(10),
          child: GridView.builder(
            itemCount: 6,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder:
                (context, index) => Container(
                  color: Colors.grey[300],
                  child: Image.network(
                    'https://via.placeholder.com/150',
                    fit: BoxFit.cover,
                  ),
                ),
          ),
        ),
      ),
    );
  }
}
