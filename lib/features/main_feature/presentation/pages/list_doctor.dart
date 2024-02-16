import 'package:flutter/material.dart';

class ListDoctorPage extends StatelessWidget {
  const ListDoctorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Doctor'),
      ),
      body: const Center(
        child: Text('List Doctor Page'),
      ),
    );
  }
}
