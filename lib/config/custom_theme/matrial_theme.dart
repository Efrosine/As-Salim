import 'package:assalim/config/custom_theme/matrial_scheme.dart';
import 'package:assalim/config/extention/matrial_theme_extension.dart';
import 'package:flutter/material.dart';

class MaterialTheme {
  const MaterialTheme(this.textTheme);

  final TextTheme textTheme;

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff00687a),
      surfaceTint: Color(0xff00687a),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffadecff),
      onPrimaryContainer: Color(0xff001f26),
      secondary: Color(0xff446732),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffc4efab),
      onSecondaryContainer: Color(0xff062100),
      tertiary: Color(0xff116b56),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffa3f2d8),
      onTertiaryContainer: Color(0xff002018),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      background: Color(0xfff5fafc),
      onBackground: Color(0xff171c1e),
      surface: Color(0xfff5fafc),
      onSurface: Color(0xff171c1e),
      surfaceVariant: Color(0xffdbe4e7),
      onSurfaceVariant: Color(0xff3f484b),
      outline: Color(0xff70797c),
      outlineVariant: Color(0xffbfc8cb),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2c3133),
      inverseOnSurface: Color(0xffecf2f4),
      inversePrimary: Color(0xff85d2e7),
      primaryFixed: Color(0xffadecff),
      onPrimaryFixed: Color(0xff001f26),
      primaryFixedDim: Color(0xff85d2e7),
      onPrimaryFixedVariant: Color(0xff004e5d),
      secondaryFixed: Color(0xffc4efab),
      onSecondaryFixed: Color(0xff062100),
      secondaryFixedDim: Color(0xffa9d291),
      onSecondaryFixedVariant: Color(0xff2d4f1d),
      tertiaryFixed: Color(0xffa3f2d8),
      onTertiaryFixed: Color(0xff002018),
      tertiaryFixedDim: Color(0xff87d6bd),
      onTertiaryFixedVariant: Color(0xff005140),
      surfaceDim: Color(0xffd5dbdd),
      surfaceBright: Color(0xfff5fafc),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffeff4f7),
      surfaceContainer: Color(0xffe9eff1),
      surfaceContainerHigh: Color(0xffe4e9eb),
      surfaceContainerHighest: Color(0xffdee3e5),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xff85d2e7),
      surfaceTint: Color(0xff85d2e7),
      onPrimary: Color(0xff003641),
      primaryContainer: Color(0xff004e5d),
      onPrimaryContainer: Color(0xffadecff),
      secondary: Color(0xffa9d291),
      onSecondary: Color(0xff173807),
      secondaryContainer: Color(0xff2d4f1d),
      onSecondaryContainer: Color(0xffc4efab),
      tertiary: Color(0xff87d6bd),
      onTertiary: Color(0xff00382c),
      tertiaryContainer: Color(0xff005140),
      onTertiaryContainer: Color(0xffa3f2d8),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      background: Color(0xff0f1416),
      onBackground: Color(0xffdee3e5),
      surface: Color(0xff0f1416),
      onSurface: Color(0xffdee3e5),
      surfaceVariant: Color(0xff3f484b),
      onSurfaceVariant: Color(0xffbfc8cb),
      outline: Color(0xff899295),
      outlineVariant: Color(0xff3f484b),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdee3e5),
      inverseOnSurface: Color(0xff2c3133),
      inversePrimary: Color(0xff00687a),
      primaryFixed: Color(0xffadecff),
      onPrimaryFixed: Color(0xff001f26),
      primaryFixedDim: Color(0xff85d2e7),
      onPrimaryFixedVariant: Color(0xff004e5d),
      secondaryFixed: Color(0xffc4efab),
      onSecondaryFixed: Color(0xff062100),
      secondaryFixedDim: Color(0xffa9d291),
      onSecondaryFixedVariant: Color(0xff2d4f1d),
      tertiaryFixed: Color(0xffa3f2d8),
      onTertiaryFixed: Color(0xff002018),
      tertiaryFixedDim: Color(0xff87d6bd),
      onTertiaryFixedVariant: Color(0xff005140),
      surfaceDim: Color(0xff0f1416),
      surfaceBright: Color(0xff343a3c),
      surfaceContainerLowest: Color(0xff090f11),
      surfaceContainerLow: Color(0xff171c1e),
      surfaceContainer: Color(0xff1b2022),
      surfaceContainerHigh: Color(0xff252b2d),
      surfaceContainerHighest: Color(0xff303638),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.background,
        canvasColor: colorScheme.surface,
      );
}
