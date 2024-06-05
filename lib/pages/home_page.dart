import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //return type of build is widget
    return Scaffold(
      //it is a widget that has many features
      // Appbar, Drawer, floating action button, bottom navigation bar, snack bar
      appBar: AppBar(
        title: const Text('Breakfast'),
        centerTitle: true,
      ),
    );
  }
}
