import 'package:bloc/bloc.dart';
import 'package:pratik_portfolio/features/portfolio/repository/portfolio_repository.dart';
import 'package:pratik_portfolio/shared/supabase/supabase_repository.dart';

import 'protfolio_state.dart';

class PortfolioCubit extends Cubit<PortfolioState> {
  PortfolioCubit(this.supabaseRepository, this.portfolioRepository)
      : super(PortfolioState());
  final SupabaseRepository supabaseRepository;
  final PortfolioRepository portfolioRepository;
  Future<void> fetch() async {
    _fetchPortfolio();
    _fetchGitHubProfile();
  }

  Future<void> _fetchPortfolio() async {
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

  Future<void> _fetchGitHubProfile() async {
    try {
      final profile = await portfolioRepository.getGithubRepo();
      emit(state.copyWith(githubProfile: profile));
    } catch (e) {
      emit(state);
    }
  }
}
