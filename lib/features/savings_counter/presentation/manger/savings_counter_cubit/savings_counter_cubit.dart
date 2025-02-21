import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'savings_counter_state.dart';

class SavingsCounterCubit extends Cubit<SavingsCounterState> {
  SavingsCounterCubit() : super(SavingsCounterState.initial());

  void setGoal(double amount) {
    emit(SavingsCounterState(
      goalAmount: amount,
      currentSavings: 0,
      unsmokedCigarettesAmount: 0,
      isGoalCompleted: false,
    ));
  }

  void deleteGoal() {
    emit(SavingsCounterState(
      goalAmount: 0,
      currentSavings: 0,
      unsmokedCigarettesAmount: 0,
      isGoalCompleted: false,
    ));
  }

  void updateSavings(double amount) {
    final newSavings = state.currentSavings + amount;
    final isCompleted = newSavings >= state.goalAmount;

    emit(state.copyWith(
      currentSavings: newSavings,
      isGoalCompleted: isCompleted,
    ));
  }

  void updateGoal(double newGoal) {
    emit(state.copyWith(
      goalAmount: newGoal,
    ));
  }

  void updateCigarettesAmount(double cigarettesAmount) {
    final newUnsmokedCigarettesAmount =
        state.unsmokedCigarettesAmount + cigarettesAmount;

    emit(state.copyWith(
      unsmokedCigarettesAmount: newUnsmokedCigarettesAmount,
    ));
  }

  void addNewGoal(double newGoalAmount) {
    if (state.isGoalCompleted) {
      setGoal(newGoalAmount);
    }
  }
}
