import 'package:flutter/material.dart';

class GlassmorphismBackground extends StatelessWidget {
  const GlassmorphismBackground({
    Key? key,
    required this.child,
    this.color = Colors.white,
    this.blur = 10,
    this.opacity = 0.3,
    this.borderRadius = 20,
    this.margin,
    this.padding,
  }) : super(key: key);

  final double blur;
  final double borderRadius;
  final Widget child;
  final Color color;
  final EdgeInsetsGeometry? margin;
  final double opacity;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(opacity),
            blurRadius: blur,
            spreadRadius: blur,
          ),
        ],
      ),
      child: child,
    );
  }
}
