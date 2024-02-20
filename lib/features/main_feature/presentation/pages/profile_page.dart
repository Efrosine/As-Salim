import 'package:assalim/core/common/custom_background/base_background.dart';
import 'package:assalim/core/common/custom_widget/backgroud_widget.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgourdWidget(
      baseBackground: BaseBackground.varian3(),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text(
              'Profile',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(12),
                  height: 148,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Theme.of(context).colorScheme.primaryContainer,
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context).colorScheme.outline,
                        offset: Offset(0, 4),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Dillah Saputra",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      SizedBox(height: 12),
                      Expanded(
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 31,
                              backgroundImage:
                                  AssetImage("assets/images/profile.jpg"),
                            ),
                            SizedBox(width: 26),
                            Expanded(
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: userDataList.length,
                                itemBuilder: (BuildContext context, int index) {
                                  final userData = userDataList[index];
                                  return Container(
                                    child: Row(
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              userData.title,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall,
                                            ),
                                            CircleAvatar(
                                              radius: 26,
                                              backgroundColor: Colors.white,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    userData.value,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .titleMedium,
                                                  ),
                                                  Text(
                                                    userData.unit,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodySmall,
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(width: 12),
                                        if (index < userDataList.length - 1)
                                          VerticalDivider(
                                            thickness: 2,
                                            width: 2,
                                            color: Colors.white,
                                          ),
                                        SizedBox(width: 12),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 24),
                //tabel content
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                        color: Theme.of(context).colorScheme.outline),
                    color: Theme.of(context).colorScheme.surface,
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context).colorScheme.outline,
                        offset: Offset(0, 4),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                              color: Theme.of(context).colorScheme.outline),
                          gradient: LinearGradient(
                            colors: [Color(0xFFADECFF), Color(0xFFADECFF)],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Obat Yang Dikonsumsi',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            Row(
                              children: [
                                Text('Profile1',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium),
                                SizedBox(width: 8),
                                Icon(Icons.edit),
                              ],
                            ),
                          ],
                        ),
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: daftarObat.length,
                        itemBuilder: (context, index) {
                          final obat = daftarObat[index];
                          return Container(
                            margin: EdgeInsets.all(12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('• ${obat.nama}',
                                    style:
                                        Theme.of(context).textTheme.bodyMedium),
                                Row(
                                  children: [
                                    Container(
                                      width: 46,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primaryContainer,
                                        borderRadius: BorderRadius.circular(16),
                                        border: Border.all(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .outline),
                                      ),
                                      child: Text(
                                        obat.jam1,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium,
                                      ),
                                    ),
                                    SizedBox(width: 4),
                                    Container(
                                      width: 46,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primaryContainer,
                                        borderRadius: BorderRadius.circular(16),
                                        border: Border.all(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .outline),
                                      ),
                                      child: Text(
                                        obat.jam2,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

class UserData {
  final String title;
  final String value;
  final String unit;

  UserData({required this.title, required this.value, required this.unit});
}

final List<UserData> userDataList = [
  UserData(title: "BB", value: "80", unit: "KG"),
  UserData(title: "TB", value: "168", unit: "CM"),
  UserData(title: "Umur", value: "21", unit: "Tahun"),
];

class Obat {
  final String nama;
  final String jam1;
  final String jam2;

  Obat({
    required this.nama,
    required this.jam1,
    required this.jam2,
  });
}

List<Obat> daftarObat = [
  Obat(nama: 'Paracetamol', jam1: '08.00', jam2: '20.00'),
  Obat(nama: 'Bisolvon', jam1: '09.30', jam2: '21.30'),
  Obat(nama: 'Vitamin C', jam1: '09.30', jam2: '21.30'),
];
