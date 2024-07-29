import 'package:bloc/bloc.dart';
import 'package:pratik_portfolio/features/portfolio/model/portfolio_model.dart';

import 'protfolio_state.dart';

class PortfolioCubit extends Cubit<PortfolioState> {
  PortfolioCubit() : super(PortfolioState());

  Future<void> fetch() async {
    final currentList = state.portfolioList;
    if (currentList.isNotEmpty) {
      emit(state.copyWith(isLoading: false));
      return;
    } else {
      emit(state.copyWith(isLoading: true));
    }

    final List<PortfolioModel> response = [];
    emit(state.copyWith(
      portfolioList: response,
      isLoading: false,
    ));
  }
}
