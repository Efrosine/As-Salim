import 'package:flutter/material.dart';

class MonitorBloodPressurePage extends StatelessWidget {
  const MonitorBloodPressurePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Monitor Blood Pressure'),
      ),
      body: const Center(
        child: Text('Monitor Blood Pressure Page'),
      ),
    );
  }
}
