import 'package:assalim/config/extension/build_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Text('News'),
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Trending'),
                Tab(text: 'Berita Haji'),
                Tab(text: 'Isu Kesehatan'),
              ],
            ),
          ),
          body: ListView.separated(
              padding: const EdgeInsets.all(24),
              itemBuilder: (context, index) {
                return Card(
                  elevation: 4,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AspectRatio(
                          aspectRatio: 2 / 1.5,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.red,
                            ),
                          ),
                        ),
                        Gap(8),
                        Text(
                          'Pentingnya mengoptimlkan kesehatan sebelum keberangkatan haji',
                          style: context.textTheme.bodyMedium,
                        ),
                        const Gap(8),
                        Align(
                          alignment: Alignment.centerRight,
                          child: FilledButton(
                              onPressed: () {}, child: Text('Baca Selengkapnya')),
                        ),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => Gap(16),
              itemCount: 5)),
    );
  }
}
