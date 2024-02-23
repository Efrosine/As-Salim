import 'package:assalim/features/main_feature/presentation/pages/main_pages.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class NavBarPage extends StatefulWidget {
  const NavBarPage({super.key});

  @override
  State<NavBarPage> createState() => _NavBarPageState();
}

class _NavBarPageState extends State<NavBarPage> {
  int _curentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        destinations: listLabel,
        selectedIndex: _curentIndex,
        onDestinationSelected: (value) {
          setState(() {
            _curentIndex = value;
          });
        },
      ),
      body: [
        HomePage(),
        ListDoctorPage(),
        NewsPage(),
        ProfilePage(),
      ][_curentIndex],
    );
  }

  List<NavigationDestination> listLabel = [
    NavigationDestination(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    NavigationDestination(icon: Icon(MdiIcons.doctor), label: "Doctors"),
    NavigationDestination(icon: Icon(Icons.newspaper), label: 'News'),
    NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
  ];
}
