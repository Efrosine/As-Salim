import 'package:assalim/core/common/custom_background/base_background.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Latar Belakang dari BaseBackground
          BaseBackground.varian1(),

          // Widget lain di atas latar belakang
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 80,
                  child: Icon(
                    Icons.person,
                    size: 80,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 40),
                Text("As-Saalim",
                    style: TextStyle(fontSize: 35, color: Colors.black)),
                Text("Selamat Datang",
                    style: TextStyle(fontSize: 18, color: Colors.black)),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF00687A),
                  ),
                  width: 296,
                  height: 40,
                  child: Center(
                    child: Text("Get Started",
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
