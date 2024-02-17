import 'package:flutter/material.dart';

class CColors {
  static const LinearGradient gradientVariant1 = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0x00ffffff),
      Color(0x9994e8fb),
      Color(0xb380e4fa),
      Color(0xFF45d7f8),
    ],
    stops: [0.0, 0.2, 0.55, 1.0],
  );

  static const LinearGradient gradientVariant2 = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.centerRight,
    colors: [
      Color(0xff63E127),
      Color(0x77b6f19a),
      Color(0x00ffffff),
    ],
    stops: [0.0, 0.2, 1],
  );
}
