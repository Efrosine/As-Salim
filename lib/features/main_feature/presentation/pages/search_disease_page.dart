import 'package:assalim/core/common/custom_background/base_background.dart';
import 'package:assalim/core/common/custom_widget/backgroud_widget.dart';
import 'package:assalim/features/Model/keluhandata.dart';
import 'package:flutter/material.dart';

class SearchDisseasePage extends StatefulWidget {
  const SearchDisseasePage({Key? key, required this.initialQuery}) : super(key: key);

  final String initialQuery;

  @override
  State<SearchDisseasePage> createState() => _SearchDisseasePageState();
}

class _SearchDisseasePageState extends State<SearchDisseasePage> {
  late TextEditingController searchController;
  List<Keluhan> searchResults = [];

  @override
  @override
  void initState() {
    super.initState();
    searchController = TextEditingController(text: widget.initialQuery);
    handleSearch();
  }

  void handleSearch() {
    setState(() {
      searchResults = keluhanList
          .where((keluhan) =>
              keluhan.judul.toLowerCase().contains(searchController.text.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return BackgourdWidget(
      baseBackground: BaseBackground.varian3(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          toolbarHeight: 110,
          flexibleSpace: Container(
            padding: const EdgeInsets.only(left: 45, top: 50, right: 24),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: const BorderRadius.horizontal(
                left: Radius.circular(16),
                right: Radius.circular(16),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(
                      color: Theme.of(context).colorScheme.outline,
                      width: 2,
                    ),
                    color: Theme.of(context).colorScheme.surface,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: searchController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Punya masalah kesehatan?",
                            hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                                ),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: handleSearch,
                        icon: const Icon(Icons.search),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 24),
                Row(
                  children: [
                    const Icon(Icons.find_in_page),
                    const SizedBox(width: 8),
                    Text(
                      "Terdapat ${searchResults.length} hasil pencarian",
                      style: Theme.of(context).textTheme.bodyMedium,
                    )
                  ],
                ),
                const SizedBox(height: 34),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: searchResults.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          width: 312,
                          padding:
                              const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          color: const Color.fromARGB(255, 230, 236, 239),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                searchResults[index].judul,
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                              Text(
                                searchResults[index].deskripsi,
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 8),
                      ],
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
