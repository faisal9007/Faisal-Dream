import 'package:flutter/material.dart';
class MainNavBarHolderScreen extends StatefulWidget {
  const MainNavBarHolderScreen({super.key});

  @override
  State<MainNavBarHolderScreen> createState() => _MainNavBarHolderScreenState();
}

class _MainNavBarHolderScreenState extends State<MainNavBarHolderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
          backgroundColor: Colors.grey,
          indicatorColor: Colors.brown,
          destinations: [

        NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
        NavigationDestination(icon: Icon(Icons.bar_chart), label: 'Progress'),
        NavigationDestination(icon: Icon(Icons.task), label: 'New Task'),
        NavigationDestination(icon: Icon(Icons.cancel_rounded), label: 'Cancel'),
      ]),
    );
  }
}
