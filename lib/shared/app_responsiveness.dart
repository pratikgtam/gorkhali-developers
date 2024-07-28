import 'package:flutter/material.dart';

class AppResponsiveness {
  static const double _mobileBreakpoint = 650;
  static const double _tabletBreakpoint = 1100;

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < _mobileBreakpoint;
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width >= _mobileBreakpoint &&
        MediaQuery.of(context).size.width < _tabletBreakpoint;
  }

  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= _tabletBreakpoint;
  }
}
