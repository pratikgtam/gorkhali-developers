import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pratik_portfolio/features/landing/cubit/landing_cubit.dart';
import 'package:pratik_portfolio/shared/app_navigation_rail.dart';
import 'package:pratik_portfolio/shared/bottom_nav_bar.dart';
import 'package:pratik_portfolio/shared/constatnts.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final currentItem =
        context.select((LandingCubit cubit) => cubit.state.landingPage);

    return Scaffold(
      bottomNavigationBar: const AppBottomNavigationBar(),
      body: Row(
        children: [
          const AppNavigationRail(),
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
