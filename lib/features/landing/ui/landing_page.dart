import 'package:flutter/material.dart';
import 'package:pratik_portfolio/features/contact_us/contact_us_page.dart';
import 'package:pratik_portfolio/features/home/home_page.dart';
import 'package:pratik_portfolio/features/my_services/my_services_page.dart';
import 'package:pratik_portfolio/features/portfolio/portfolio_page.dart';
import 'package:responsive_framework/responsive_framework.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    const List<Widget> pages = <Widget>[
      HomePage(),
      PortfolioPage(),
      MyServicesPage(),
      ContactUsPage(),
    ];

    List<Widget> destinations = [
      const NavigationDestination(
        icon: Icon(Icons.home_outlined),
        selectedIcon: Icon(Icons.home),
        label: 'Home',
      ),
      const NavigationDestination(
        icon: Icon(Icons.work_outline),
        label: 'Portfolio',
        selectedIcon: Icon(Icons.work),
      ),
      const NavigationDestination(
        icon: Icon(Icons.work_outline),
        label: 'My Services',
        selectedIcon: Icon(Icons.work),
      ),
      const NavigationDestination(
        icon: Icon(Icons.contact_page_outlined),
        label: 'Contact Us',
        selectedIcon: Icon(Icons.contact_page),
      ),
    ];

    return Scaffold(
      body: Responsiveness(
        child: Column(
          children: [
            NavigationBar(
              backgroundColor: Colors.white,
              destinations: destinations,
            )
          ],
        ),
      ),
    );
  }
}

class Responsiveness extends StatelessWidget {
  const Responsiveness({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 800),
          child: Center(child: child)),
    );
  }
}
