import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ListDoctorPage extends StatelessWidget {
  const ListDoctorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Dokter'),
      ),
      body: ListView(
        padding: EdgeInsets.all(24),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.arrow_back_ios_new_rounded),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(MdiIcons.calendarToday),
                  Text('Kamis, 16 Maret 2023')
                ],
              ),
              Icon(Icons.arrow_forward_ios_rounded),
            ],
          ),
          Divider(height: 24),
        ],
      ),
    );
  }
}
