import 'package:assalim/features/data/doctordata.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  final DoctorData doctor;

  ChatPage({required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat'),
      ),
      body: const Center(
        child: Text('Chat Page'),
      ),
    );
  }
}
