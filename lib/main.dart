import 'package:assalim/config/custom_theme/matrial_theme.dart';
import 'package:assalim/config/route/routes.dart';
import 'package:assalim/features/main_feature/presentation/pages/main_pages.dart';
import 'package:flutter/material.dart';

import 'core/dependency_injection/injection_container.dart';

Future<void> main() async {
  WidgetsFlutterBinding();
  await initDependencies();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MaterialTheme(sl()).light(),
      darkTheme: MaterialTheme(sl()).dark(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
      initialRoute: '/onboarding',
    );
  }
}
