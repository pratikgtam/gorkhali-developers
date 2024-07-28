import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pratik_portfolio/features/landing/cubit/landing_cubit.dart';
import 'package:pratik_portfolio/features/landing/models/landing_page_items.dart';
import 'package:pratik_portfolio/shared/app_responsiveness.dart';

class AppNavigationRail extends StatelessWidget {
  const AppNavigationRail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isMobile = AppResponsiveness(context: context).isMobile();

    List<NavigationRailDestination> destinations = LandingPageItems.values
        .map((e) => NavigationRailDestination(
              icon: e.icon,
              selectedIcon: e.selectedIcon,
              label: e.label,
            ))
        .toList();
    if (isMobile) return const SizedBox();
    return NavigationRail(
      labelType: NavigationRailLabelType.all,
      groupAlignment: 0.0,
      minWidth: 100,
      selectedIndex:
          context.select((LandingCubit cubit) => cubit.state.landingPage.index),
      onDestinationSelected: (value) {
        context.read<LandingCubit>().changePage(value);
      },
      backgroundColor: Colors.white,
      destinations: destinations,
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
