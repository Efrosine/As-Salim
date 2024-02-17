import 'package:flutter/material.dart';

class BackgourdWidget extends StatelessWidget {
  const BackgourdWidget({
    super.key,
    required this.baseBackground,
    this.linearGradient,
    required this.child,
  });

  const BackgourdWidget.linear({
    super.key,
    this.baseBackground,
    required this.linearGradient,
    required this.child,
  });

  final List<LinearGradient>? linearGradient;
  final Widget? baseBackground;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (baseBackground != null) baseBackground!,
        if (linearGradient != null) ...{
          Container(
            color: Colors.white,
          ),
          for (var gradient in linearGradient!)
            Container(
              decoration: BoxDecoration(
                gradient: gradient,
              ),
            )
        },
        child,
      ],
    );
  }
}
