import 'package:flutter/material.dart';

void main() => runApp(Task8());

class Task8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      routes: {'/first': (_) => FirstPage(), '/second': (_) => SecondPage()},
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Drawer App')),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text('Navigation')),
            ListTile(
              title: Text('First'),
              onTap: () => Navigator.pushNamed(context, '/first'),
            ),
            ListTile(
              title: Text('Second'),
              onTap: () => Navigator.pushNamed(context, '/second'),
            ),
          ],
        ),
      ),
      body: Center(child: Text('Home Screen')),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('First Page')));
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('Second Page')));
  }
}
