import 'package:flutter/material.dart';

extension ColorSchemeExtention on BuildContext {
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
}
