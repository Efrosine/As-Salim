import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';

final sl = GetIt.instance;

Future<void> initDependencies() async {
  final textTheme = GoogleFonts.robotoTextTheme();

  sl.registerSingleton<TextTheme>(textTheme);
}
