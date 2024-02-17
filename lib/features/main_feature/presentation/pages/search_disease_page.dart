import 'package:flutter/material.dart';

class SearchDisseasePage extends StatelessWidget {
  const SearchDisseasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Disease'),
      ),
      body: const Center(
        child: Text('Search Disease Page'),
      ),
    );
  }
}
