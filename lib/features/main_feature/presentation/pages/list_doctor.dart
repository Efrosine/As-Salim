import 'package:assalim/config/extension/build_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ListDoctorPage extends StatelessWidget {
  const ListDoctorPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> jadwal = [
      '08:00-09:00',
      '10:00-11:00',
      '12:00-13:00',
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Dokter'),
        backgroundColor: context.colorScheme.surface,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(48),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.arrow_back_ios_new_rounded),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(MdiIcons.calendarToday),
                    const Gap(8),
                    const Text('Kamis, 16 Maret 2023')
                  ],
                ),
                const Icon(Icons.arrow_forward_ios_rounded),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.fromLTRB(24, 16, 24, 0),
        children: [
          Text(
            'Dokter yang terjadwal',
            style: context.textTheme.titleMedium,
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(vertical: 16),
            itemCount: 5,
            separatorBuilder: (context, index) => const Gap(8),
            itemBuilder: (context, index) => Card(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  color: context.colorScheme.surface,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: context.colorScheme.outlineVariant,
                    width: 1,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox.square(
                          dimension: 56,
                          child: Container(color: Colors.red),
                        ),
                        const Gap(16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Dr. John Doe', style: context.textTheme.bodyLarge),
                            Text('Dokter Umum', style: context.textTheme.bodyMedium),
                          ],
                        )
                      ],
                    ),
                    const Gap(8),
                    Text('Jam kerja', style: context.textTheme.bodyMedium),
                    const Gap(8),
                    Wrap(
                      spacing: 8,
                      children: jadwal
                          .map(
                            (e) => Chip(
                              labelStyle: context.textTheme.labelLarge,
                              label: Text(e),
                              backgroundColor: context.colorScheme.secondaryContainer,
                              side: BorderSide.none,
                            ),
                          )
                          .toList(),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
