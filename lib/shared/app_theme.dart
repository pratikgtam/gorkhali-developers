import 'package:flutter/material.dart';
import 'package:pratik_portfolio/shared/app_responsiveness.dart';

class AppTheme {
  static ThemeData theme(BuildContext context) {
    final isMobile = AppResponsiveness.isMobile(context);
    final isTablet = AppResponsiveness.isTablet(context);
    final isDesktop = AppResponsiveness.isDesktop(context);

    return ThemeData(
      textTheme: TextTheme(
        headlineLarge: TextStyle(
          fontSize: isDesktop
              ? 60
              : isTablet
                  ? 50
                  : 40,
          fontWeight: FontWeight.bold,
        ),
        headlineMedium: TextStyle(
          fontSize: isDesktop
              ? 40
              : isTablet
                  ? 30
                  : 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
