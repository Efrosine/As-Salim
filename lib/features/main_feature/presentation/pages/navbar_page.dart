import 'package:assalim/features/main_feature/presentation/pages/main_pages.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class NavBarPage extends StatefulWidget {
  const NavBarPage({super.key});

  @override
  State<NavBarPage> createState() => _NavBarPageState();
}

class _NavBarPageState extends State<NavBarPage> {
  List<NavigationDestination> listLabel = [
    const NavigationDestination(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    NavigationDestination(icon: Icon(MdiIcons.doctor), label: "Doctors"),
    const NavigationDestination(icon: Icon(Icons.newspaper), label: 'News'),
    const NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
  ];

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
        const ListDoctorPage(),
        const NewsPage(),
        const ProfilePage(),
      ][_curentIndex],
    );
  }
}
