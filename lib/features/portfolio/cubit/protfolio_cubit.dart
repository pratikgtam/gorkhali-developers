import 'package:bloc/bloc.dart';
import 'package:pratik_portfolio/shared/supabase/supabase_repository.dart';

import 'protfolio_state.dart';

class PortfolioCubit extends Cubit<PortfolioState> {
  PortfolioCubit(this.supabaseRepository) : super(PortfolioState());
  final SupabaseRepository supabaseRepository;
  Future<void> fetch() async {
    try {
      final currentList = state.portfolioList;
      if (currentList.isNotEmpty) {
        emit(state.copyWith(isLoading: false));
        return;
      } else {
        emit(state.copyWith(isLoading: true));
        final portfolio = await supabaseRepository.getPortfolio();
        emit(state.copyWith(
          portfolioList: portfolio,
          isLoading: false,
        ));
      }
    } catch (e) {
      emit(state.copyWith(isLoading: false));
    }
  }
}
