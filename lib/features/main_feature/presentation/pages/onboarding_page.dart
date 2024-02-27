import 'package:assalim/config/constants/color.dart';
import 'package:assalim/core/common/custom_widget/backgroud_widget.dart';
import 'package:assalim/features/auth/presentation/pages/signin_page.dart';

import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgourdWidget.linear(
        linearGradient: const [
          CColors.gradientVariant1,
          CColors.gradientVariant2,
        ],
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/logo/logo.png", fit: BoxFit.cover, height: 200),
                  const SizedBox(height: 40),
                  Text("As-Saalimm", style: Theme.of(context).textTheme.displayMedium),
                  Text("Selamat Datang",
                      style: Theme.of(context).textTheme.headlineSmall),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignInPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF00687A),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      minimumSize: const Size(296, 40),
                    ),
                    child: Text("Get Started",
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(color: Colors.white)),
                  ),
                ],
              ),
            )));
  }
}
