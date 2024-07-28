import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pratik_portfolio/features/contact_us/contact_us_page.dart';
import 'package:pratik_portfolio/features/home/home_page.dart';
import 'package:pratik_portfolio/features/my_services/my_services_page.dart';
import 'package:pratik_portfolio/features/portfolio/portfolio_page.dart';

part 'landing_state.freezed.dart';

@freezed
class LandingState with _$LandingState {
  const factory LandingState({
    @Default(0) int currentIndex,
  }) = _LandingState;

  const LandingState._();

  Widget get body {
    switch (currentIndex) {
      case 0:
        return const HomePage();
      case 1:
        return const PortfolioPage();
      case 2:
        return const MyServicesPage();
      default:
        return const ContactUsPage();
    }
  }
}
