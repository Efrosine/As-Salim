import 'package:assalim/features/auth/presentation/pages/auth_pages.dart';
import 'package:assalim/features/data/doctordata.dart';
import 'package:assalim/features/main_feature/presentation/pages/main_pages.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _materialRoute(const SignInPage());
      case '/onboarding':
        return _materialRoute(const OnboardingPage());
      case '/signup':
        return _materialRoute(const SignUpPage());
      case '/narbar':
        return _materialRoute(const NavBarPage());
      case '/search_dissease':
        return _materialRoute(const SearchDisseasePage());
      case '/chat':
        return _materialRoute(ChatPage(
          doctor: doctors[0],
        ));
      case '/monitor_blood_pressure':
        return _materialRoute(const MonitorBloodPressurePage());
      case '/monitor_water_comsumtion':
        return _materialRoute(const MonitorWaterConsumtionPage());
      case '/nutritional_needs':
        return _materialRoute(const NutritionalNeedsPage());
      case '/monitor_medicine_comsumption':
        return _materialRoute(const MonitorMedicineConsumptionPage());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('404 - Not Found Page ${settings.name}'),
            ),
          ),
        );
    }
  }

  static Route<dynamic> _materialRoute(Widget page) {
    return MaterialPageRoute(builder: (_) => SafeArea(child: page));
  }
}
