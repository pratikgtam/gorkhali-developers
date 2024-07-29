import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pratik_portfolio/features/landing/cubit/landing_cubit.dart';
import 'package:pratik_portfolio/features/portfolio/cubit/protfolio_cubit.dart';

class GlobalProviders extends StatelessWidget {
  const GlobalProviders({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: const [],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => LandingCubit(),
          ),
          BlocProvider(
            create: (context) => PortfolioCubit(),
          ),
        ],
        child: child,
      ),
    );
  }
}
