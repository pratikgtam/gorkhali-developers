import 'package:flutter/material.dart';
import 'package:pratik_portfolio/shared/app_responsiveness.dart';

class AppTheme {
  static ThemeData theme(BuildContext context) {
    final responsiveNess = AppResponsiveness(context: context);

    return ThemeData(
      textTheme: TextTheme(
        headlineLarge: TextStyle(
          fontSize: responsiveNess.headlineLargeFontSize(),
          fontWeight: FontWeight.bold,
        ),
        headlineMedium: TextStyle(
          fontSize: responsiveNess.headlineMediumFontSize(),
          fontWeight: FontWeight.bold,
        ),
        bodyLarge: TextStyle(
          fontSize: responsiveNess.bodyLargeFontSize(),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          padding: WidgetStateProperty.all(
            const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 20,
            ),
          ),
          textStyle: WidgetStateProperty.all(
            Theme.of(context).textTheme.headlineMedium,
          ),
        ),
      ),
    );
  }
}
