import 'package:bloc/bloc.dart';
import 'package:pratik_portfolio/features/portfolio/model/portfolio_model.dart';
import 'package:pratik_portfolio/shared/constatnts.dart';
import 'package:pratik_portfolio/shared/firebase/firebase_repository.dart';

import 'protfolio_state.dart';

class PortfolioCubit extends Cubit<PortfolioState> {
  PortfolioCubit(this.firebaseRepository) : super(PortfolioState());
  final FirebaseRepository firebaseRepository;

  Future<void> fetch() async {
    final currentList = state.portfolioList;
    if (currentList.isNotEmpty) {
      emit(state.copyWith(isLoading: false));
      return;
    } else {
      emit(state.copyWith(isLoading: true));
    }

    final response = await firebaseRepository.getDocuments(
        collectionName: AppConstants.portfolioCollection,
        fromJson: PortfolioModel.fromJson);
    emit(state.copyWith(
      portfolioList: response,
      isLoading: false,
    ));
  }
}
