import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pratik_portfolio/features/portfolio/model/portfolio_model.dart';

part 'protfolio_state.freezed.dart';
part 'protfolio_state.g.dart';

@freezed
class PortfolioState with _$PortfolioState {
  factory PortfolioState({
    @Default(<PortfolioModel>[]) List<PortfolioModel> portfolioList,
    @Default(false) bool isLoading,
  }) = _PortfolioState;

  factory PortfolioState.fromJson(Map<String, dynamic> json) =>
      _$PortfolioStateFromJson(json);
}
