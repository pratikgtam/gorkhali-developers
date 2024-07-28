import 'package:bloc/bloc.dart';
import 'package:pratik_portfolio/features/landing/cubit/landing_state.dart';

class LandingCubit extends Cubit<LandingState> {
  LandingCubit() : super(const LandingState());
  final length = 4;

  void changeIndex(int index) {
    emit(state.copyWith(currentIndex: index));
  }

  void incrementIndex() {
    if (state.currentIndex == length - 1) {
      return;
    }
    emit(state.copyWith(currentIndex: state.currentIndex + 1));
  }

  void decrementIndex() {
    if (state.currentIndex == 0) {
      return;
    }
    emit(state.copyWith(currentIndex: state.currentIndex - 1));
  }
}
