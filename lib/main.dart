import 'package:flutter/material.dart';
import 'package:pratik_portfolio/features/landing/ui/landing_page.dart';
import 'package:pratik_portfolio/shared/app_theme.dart';
import 'package:pratik_portfolio/shared/global_providers.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://qtozgrifxyvrydlnhnbe.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InF0b3pncmlmeHl2cnlkbG5obmJlIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjI2NTE4MTYsImV4cCI6MjAzODIyNzgxNn0.q-8sv7k7FKexEsxJgPl1OTqv5JVywZdfcRg15jvKwdk',
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pratik Portfolio',
      theme: AppTheme.theme(context),
      home: const GlobalProviders(
        child: LandingPage(),
      ),
    );
  }
}
