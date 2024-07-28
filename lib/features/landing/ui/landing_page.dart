import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pratik_portfolio/features/landing/cubit/landing_cubit.dart';
import 'package:pratik_portfolio/shared/app_responsiveness.dart';
import 'package:pratik_portfolio/shared/constatnts.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = AppResponsiveness(context: context).isMobile();
    final currentItem =
        context.select((LandingCubit cubit) => cubit.state.landingPage);
    List<NavigationRailDestination> destinations = [
      const NavigationRailDestination(
        icon: Icon(Icons.home_outlined),
        selectedIcon: Icon(Icons.home),
        label: Text('Home'),
      ),
      const NavigationRailDestination(
        icon: Icon(Icons.work_outline),
        selectedIcon: Icon(Icons.work),
        label: Text('Portfolio'),
      ),
      const NavigationRailDestination(
        icon: Icon(Icons.work_outline),
        selectedIcon: Icon(Icons.work),
        label: Text('My Services'),
      ),
      const NavigationRailDestination(
        icon: Icon(Icons.contact_page_outlined),
        selectedIcon: Icon(Icons.contact_page),
        label: Text('Contact Me'),
      ),
    ];

    return Scaffold(
      body: Row(
        children: [
          if (!isMobile)
            NavigationRail(
              labelType: NavigationRailLabelType.all,
              groupAlignment: 0.0,
              minWidth: 100,
              selectedIndex: context.select(
                  (LandingCubit cubit) => cubit.state.landingPage.index),
              onDestinationSelected: (value) {
                context.read<LandingCubit>().changePage(value);
              },
              backgroundColor: Colors.white,
              destinations: destinations,
            ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(AppConstants.defaultPadding),
            child: currentItem.page,
          )),

          // body,
        ],
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
