import 'package:assalim/config/extension/build_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class NutritionalNeedsPage extends StatelessWidget {
  const NutritionalNeedsPage({super.key});

  @override
  Widget build(BuildContext context) {
    var nutrition = {'Kalori': '288', 'Lemak': '8g', 'Protein': '6g', 'Serat': '8g'};
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
        ),
        backgroundColor: context.colorScheme.primaryContainer,
        title: const Text('Kebutuhan Nutrisi'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: Text(
              'Saran Makanan',
              style: context.textTheme.titleLarge,
            ),
          ),
          SizedBox.fromSize(
            size: const Size.fromHeight(355),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              itemCount: 5,
              itemBuilder: (context, index) {
                return Card(
                  child: Container(
                    margin: const EdgeInsets.only(right: 8),
                    width: 300,
                    decoration: BoxDecoration(
                      color: context.colorScheme.surface,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: context.colorScheme.outline,
                        width: 1,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                          child: Row(
                            children: [
                              Icon(Icons.bakery_dining_outlined),
                              Gap(16),
                              Text('Nama Makanan', style: context.textTheme.titleMedium),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Stack(children: [
                            Container(color: Colors.red),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: IconButton.filledTonal(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_back_ios_new_rounded),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: IconButton.filledTonal(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward_ios_rounded),
                              ),
                            ),
                          ]),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                          child: Text(
                              'Deskripsi singkat tentang makanan\nDeskripsi singkat tentang makanan',
                              style: context.textTheme.bodyMedium),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: nutrition.entries
                              .map((e) => Column(children: [
                                    Text(e.key, style: context.textTheme.bodyLarge),
                                    Text(e.value, style: context.textTheme.bodyLarge),
                                  ]))
                              .toList(),
                        ),
                        Gap(12),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: Text('Makanan yang dibatasi', style: context.textTheme.titleLarge),
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
            itemCount: 5,
            separatorBuilder: (context, index) => Gap(8),
            itemBuilder: (context, index) {
              return Container(
                height: 64,
                width: double.maxFinite,
                color: context.colorScheme.surfaceVariant,
                child: Row(
                  children: [
                    AspectRatio(
                      aspectRatio: 1,
                      child: Container(
                        color: Colors.red,
                      ),
                    ),
                    Gap(16),
                    Text('Nama Makanan', style: context.textTheme.bodyLarge),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
