import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pratik_portfolio/features/landing/cubit/landing_cubit.dart';
import 'package:pratik_portfolio/features/landing/ui/landing_page.dart';
import 'package:pratik_portfolio/shared/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.theme(context),
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => LandingCubit(),
          ),
        ],
        child: const LandingPage(),
      ),
    );
  }
}
