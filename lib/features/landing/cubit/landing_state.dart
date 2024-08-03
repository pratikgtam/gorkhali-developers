import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pratik_portfolio/features/landing/models/landing_page_items.dart';

part 'landing_state.freezed.dart';

@freezed
class LandingState with _$LandingState {
  const factory LandingState({
    @Default(LandingPageItems.portfolio) LandingPageItems landingPage,
  }) = _LandingState;

  const LandingState._();
}
