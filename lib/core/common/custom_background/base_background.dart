import 'dart:ui';

import 'package:assalim/core/common/custom_shape/circle_positioned.dart';
import 'package:flutter/material.dart';

class BaseBackground {
  const BaseBackground();

  static Widget varian1() {
    return Stack(
      children: [
        Container(
          color: Colors.white,
        ),
        const CirclePositioned(
          color: Color(0xff45D7F8),
          size: 367,
          bottom: -119,
          left: -120,
        ),
        const CirclePositioned(
          color: Color(0xFF63E127),
          size: 125,
          bottom: 104,
          right: 10,
        ),
        const CirclePositioned(
          color: Color(0xff45D7F8),
          size: 175,
          top: 297,
          right: 23,
        ),
        const CirclePositioned(
          color: Color(0xFF63E127),
          size: 125,
          top: 260,
          left: 14,
        ),
        const CirclePositioned(
          color: Color(0xFF63E127),
          size: 210,
          top: 27,
          right: -51,
        ),
        const CirclePositioned(
          color: Color(0xff45D7F8),
          size: 183,
          top: 0,
          left: 0,
        ),
        Positioned.fill(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 80, sigmaY: 80),
            child: Container(color: Colors.white.withOpacity(0.1)),
          ),
        ),
      ],
    );
  }

  static Widget varian2() {
    return Stack(
      children: [
        Container(
          color: Colors.white,
        ),
        const CirclePositioned(
          color: Color(0xff45D7F8),
          size: 367,
          bottom: -119,
          right: -120,
        ),
        const CirclePositioned(
          color: Color(0xFF63E127),
          size: 125,
          bottom: 104,
          left: 10,
        ),
        const CirclePositioned(
          color: Color(0xff45D7F8),
          size: 175,
          top: 297,
          left: 23,
        ),
        const CirclePositioned(
          color: Color(0xFF63E127),
          size: 125,
          top: 260,
          right: 14,
        ),
        const CirclePositioned(
          color: Color(0xFF63E127),
          size: 210,
          top: 27,
          left: -51,
        ),
        const CirclePositioned(
          color: Color(0xff45D7F8),
          size: 183,
          top: 0,
          right: 0,
        ),
        Positioned.fill(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 80, sigmaY: 80),
            child: Container(color: Colors.white.withOpacity(0.1)),
          ),
        ),
      ],
    );
  }

  static Widget varian3() {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.0, 0.8, 1.0],
              colors: [
                Color.fromARGB(255, 252, 252, 252),
                Color.fromARGB(199, 242, 252, 255),
                Color(0xff45D7F8),
              ],
            ),
          ),
        ),
        Positioned.fill(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 80, sigmaY: 80),
            child: Container(color: Colors.white.withOpacity(0.1)),
          ),
        ),
      ],
    );
  }
}
