import 'package:assalim/config/custom_theme/matrial_theme.dart';
import 'package:assalim/config/route/routes.dart';
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
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MaterialTheme(sl()).light(),
      darkTheme: MaterialTheme(sl()).dark(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
      initialRoute: '/onboarding',
    );
  }
}
