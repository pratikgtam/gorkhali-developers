import 'package:flutter/material.dart';
import 'package:pratik_portfolio/features/contact_us/contact_us_page.dart';
import 'package:pratik_portfolio/features/home/home_page.dart';
import 'package:pratik_portfolio/features/my_services/my_services_page.dart';
import 'package:pratik_portfolio/features/portfolio/portfolio_page.dart';

enum LandingPageItems {
  home(title: "Home", page: HomePage()),
  portfolio(title: "Portfolio", page: PortfolioPage()),
  myServices(title: "My Services", page: MyServicesPage()),
  contactMe(title: "Contact Me", page: ContactUsPage());

  final String title;
  final Widget page;
  const LandingPageItems({required this.title, required this.page});
}

extension LandingPageItemsExtension on LandingPageItems {}
