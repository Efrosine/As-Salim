import 'package:assalim/features/Model/doctordata.dart';
import 'package:assalim/features/main_feature/presentation/pages/chat_page.dart';
import 'package:assalim/features/main_feature/presentation/pages/healtypage.dart';
import 'package:assalim/features/main_feature/presentation/pages/monitor_blood_pressure_page.dart';
import 'package:assalim/features/main_feature/presentation/pages/monitor_medicine_comsumption_page.dart';
import 'package:assalim/features/main_feature/presentation/pages/monitor_water_comsumtion_page.dart';
import 'package:assalim/features/main_feature/presentation/pages/nutritional_needs_page.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CategoryData {
  final String name;
  final IconData icon;
  final Widget page;

  CategoryData({required this.name, required this.icon, required this.page});
}

List<CategoryData> categories = [
  CategoryData(
      name: "Konsultasi",
      icon: Icons.support_agent,
      page: ChatPage(
        doctor: doctors[0],
      )),
  CategoryData(
      name: "Cek Tekanan dan Gula Darah",
      icon: MdiIcons.heartPulse,
      page: MonitorBloodPressurePage()),
  CategoryData(
      name: "Kebutuhan Air Mineral",
      icon: MdiIcons.beer,
      page: MonitorWaterConsumtionPage()),
  CategoryData(
      name: "Kebutuhan Nutrisi",
      icon: MdiIcons.foodApple,
      page: NutritionalNeedsPage()),
  CategoryData(
      name: "Cek Kepatuhan Obat",
      icon: MdiIcons.clipboardTextClockOutline,
      page: MonitorMedicineConsumptionPage()),
  CategoryData(
      name: "Program Kebugaran", icon: MdiIcons.runFast, page: HealthyPage()),
];
