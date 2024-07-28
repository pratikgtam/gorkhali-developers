import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pratik_portfolio/features/landing/cubit/landing_cubit.dart';
import 'package:pratik_portfolio/shared/app_responsiveness.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = AppResponsiveness.isMobile(context);
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
        label: Text('Contact Us'),
      ),
    ];
    final body = context.select((LandingCubit cubit) => cubit.state.body);
    return Scaffold(
      body: Listener(
        onPointerSignal: (event) {
          if (event is PointerScrollEvent) {
            if (event.scrollDelta.dy.isNegative) {
              context.read<LandingCubit>().decrementIndex();
            } else {
              context.read<LandingCubit>().incrementIndex();
            }
          }
        },
        child: Row(
          children: [
            if (!isMobile)
              NavigationRail(
                labelType: NavigationRailLabelType.all,
                groupAlignment: 0.0,
                minWidth: 100,
                selectedIndex: context
                    .select((LandingCubit cubit) => cubit.state.currentIndex),
                onDestinationSelected: (value) {
                  context.read<LandingCubit>().changeIndex(value);
                },
                backgroundColor: Colors.white,
                destinations: destinations,
              ),
            Expanded(child: SingleChildScrollView(child: body)),

            // body,
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
