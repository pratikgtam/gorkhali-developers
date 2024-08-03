import 'package:flutter/material.dart';
import 'package:pratik_portfolio/shared/app_button.dart';
import 'package:pratik_portfolio/shared/app_navigation_rail.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsiveness(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '''Get in touch for a free 30-minute consultation! Whether you're exploring new projects or need expert advice, I'm here to help. Let's discuss how we can turn your ideas into reality.''',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 50),
          AppButton(
            text: 'Book now',
            onPressed: () {
              launchUrlString('https://calendly.com/pratikgtam/30min');
            },
          ),
        ],
      ),
    );
  }
}
