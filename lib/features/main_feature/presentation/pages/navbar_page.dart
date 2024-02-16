import 'package:flutter/material.dart';

class NavBarPage extends StatelessWidget {
  const NavBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NavBar'),
      ),
      body: const Center(
        child: Text('NavBar Page'),
      ),
    );
  }
}
