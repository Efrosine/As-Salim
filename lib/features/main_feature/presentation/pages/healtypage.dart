import 'package:flutter/material.dart';

class HealthyPage extends StatelessWidget {
  const HealthyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Program Kebugaran'),
      ),
      body: const Center(
        child: Text('Program Kebugaran Page'),
      ),
    );
  }
}
