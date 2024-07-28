import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pratik_portfolio/features/landing/cubit/landing_cubit.dart';
import 'package:pratik_portfolio/features/landing/ui/landing_page.dart';
import 'package:pratik_portfolio/shared/app_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - kBottomNavigationBarHeight,
      child: Responsiveness(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'HEY THERE!',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20),
            RichText(
              text: TextSpan(
                text: 'I am ',
                style: Theme.of(context).textTheme.headlineMedium,
                children: [
                  TextSpan(
                    text: 'Pratik'.toUpperCase(),
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                          color: Theme.of(context).colorScheme.tertiary,
                        ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Text(
              '''If you are seeking a top-rated freelancer with a proven track record of success, look no further. Let's embark on a journey together, where your vision becomes a reality. Get in touch with me today, and let's bring your projects to new heights!''',
              style: Theme.of(context).textTheme.bodyLarge,
            ),

            // This is the button that will navigate to the contact us page
            const SizedBox(height: 20),
            AppButton(
              text: 'Contact Me',
              onPressed: () {
                context.read<LandingCubit>().changePage(3);
              },
            ),
          ],
        ),
      ),
    );
  }
}
