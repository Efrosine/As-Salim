import 'dart:ui';

import 'package:assalim/config/constants/color.dart';
import 'package:assalim/config/extension/build_context_extension.dart';
import 'package:assalim/core/common/custom_background/base_background.dart';
import 'package:assalim/core/common/custom_widget/backgroud_widget.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgourdWidget(
        baseBackground: BaseBackground.varian1(),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Container(
                      height: 470,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(0.83, 0.29),
                          end: Alignment(0, 0),
                          colors: [
                            Colors.transparent,
                            Colors.white.withOpacity(0.2),
                          ],
                          stops: [0.0471, 0.9783],
                        ),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      padding: EdgeInsets.only(left: 24, right: 24),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Login",
                                style: Theme.of(context).textTheme.displaySmall),
                            SizedBox(height: 16),
                            TextField(
                              decoration: InputDecoration(
                                floatingLabelBehavior: FloatingLabelBehavior.always,
                                labelText: "Username",
                                prefixIcon: Icon(
                                  Icons.search,
                                ),
                                hintText: "Hint",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                              ),
                            ),
                            SizedBox(height: 24),
                            TextField(
                              decoration: InputDecoration(
                                floatingLabelBehavior: FloatingLabelBehavior.always,
                                labelText: "Password",
                                prefixIcon: Icon(
                                  Icons.search,
                                ),
                                hintText: "Hint",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                              ),
                            ),
                            SizedBox(height: 10),
                            Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Lupa Password?",
                                    style: Theme.of(context).textTheme.labelLarge,
                                  )),
                            ),
                            SizedBox(height: 32),
                            Center(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: context.colorScheme.primary,
                                    minimumSize: Size(264, 40)),
                                onPressed: () {
                                  // Handle login here
                                },
                                child: Text(
                                  'Login',
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelLarge!
                                      .copyWith(color: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Tidak punya akun ?',
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Daftar",
                                      style: Theme.of(context).textTheme.labelLarge,
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.black,
                      ),
                      SizedBox(width: 15),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.black,
                      )
                    ],
                  )
                ],
              ),
              Positioned(
                top: 65,
                left: 145,
                right: 145,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 40,
                  child: Icon(
                    Icons.account_circle_rounded,
                    size: 72,
                    color: context.colorScheme.primary,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
