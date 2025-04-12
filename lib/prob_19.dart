import 'package:flutter/material.dart';

void main() => runApp(Task19());

class Task19 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: DrawerAnimationPage());
  }
}

class DrawerAnimationPage extends StatefulWidget {
  @override
  _DrawerAnimationPageState createState() => _DrawerAnimationPageState();
}

class _DrawerAnimationPageState extends State<DrawerAnimationPage>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Offset> slideAnimation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
    slideAnimation = Tween<Offset>(
      begin: Offset(-1.0, 0),
      end: Offset.zero,
    ).animate(controller);
  }

  void toggleDrawer() {
    controller.isCompleted ? controller.reverse() : controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(child: Text('Main Content')),
          SlideTransition(
            position: slideAnimation,
            child: SafeArea(
              child: Container(
                width: 250,
                color: Colors.grey[200],
                child: Column(
                  children: [
                    ListTile(title: Text('Home')),
                    ListTile(title: Text('Profile')),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: toggleDrawer,
        child: Icon(Icons.menu),
      ),
    );
  }
}
