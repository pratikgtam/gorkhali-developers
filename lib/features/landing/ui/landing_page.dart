import 'package:flutter/material.dart';
import 'package:pratik_portfolio/features/landing/models/landing_page_items.dart';
import 'package:pratik_portfolio/shared/app_navigation_rail.dart';
import 'package:pratik_portfolio/shared/bottom_nav_bar.dart';
import 'package:pratik_portfolio/shared/constatnts.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key, required this.currentItem});
  final LandingPageItems currentItem;

  @override
  Widget build(BuildContext context) {
    // final currentItem =
    //     context.select((LandingCubit cubit) => cubit.state.landingPage);

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
