import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pratik_portfolio/features/portfolio/cubit/protfolio_cubit.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({super.key});

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  @override
  void initState() {
    context.read<PortfolioCubit>().fetch();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final portfolios = context.watch<PortfolioCubit>().state.portfolioList;
    return SizedBox(
      height: 200,
      child: ListView.separated(
        itemCount: portfolios.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(height: 20);
        },
        itemBuilder: (BuildContext context, int index) {
          final portfolio = portfolios[index];
          return Center(
            child: SizedBox(
              width: 200,
              child: Card(
                child: ListTile(
                  title: Text(portfolio.title),
                  leading: Image.network(portfolio.imageUrl),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
