import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:nafas_app/features/savings_counter/data/models/savings_counter_model.dart';

part 'savings_counter_state.dart';

class SavingsCounterCubit extends Cubit<SavingsCounterState> {
  final Box<SavingsCounterModel> savingsBox = Hive.box('savingsBox');

  SavingsCounterCubit() : super(SavingsCounterState.initial()) {
    _loadState();
  }

  void _loadState() {
    if (savingsBox.isNotEmpty) {
      final savedState = savingsBox.get('savings');
      if (savedState != null) {
        emit(
          SavingsCounterState(
            goalAmount: savedState.goalAmount,
            currentSavings: savedState.currentSavings,
            totalSavings: savedState.totalSavings,
            unsmokedCigarettesAmount: savedState.unsmokedCigarettesAmount,
            isGoalCompleted: savedState.isGoalCompleted,
            completedGoalsCount: savedState.completedGoalsCount,
          ),
        );
      }
    }
  }

  void _saveState() {
    final model = SavingsCounterModel(
      goalAmount: state.goalAmount,
      currentSavings: state.currentSavings,
      totalSavings: state.totalSavings,
      unsmokedCigarettesAmount: state.unsmokedCigarettesAmount,
      isGoalCompleted: state.isGoalCompleted,
      completedGoalsCount: state.completedGoalsCount,
    );
    savingsBox.put('savings', model);
  }

  void setGoal(double amount) {
    emit(
      state.copyWith(
        goalAmount: amount,
        currentSavings: 0,
        isGoalCompleted: false,
      ),
    );
    _saveState();
  }

  void deleteGoal() {
    emit(
      state.copyWith(
        goalAmount: 0,
        currentSavings: 0,
        isGoalCompleted: false,
      ),
    );
    _saveState();
  }

  void updateSavings(double amount) {
    final newSavings = state.currentSavings + amount;
    final isCompleted = newSavings >= state.goalAmount;
    final newCompletedGoalsCount = isCompleted && !state.isGoalCompleted
        ? state.completedGoalsCount + 1
        : state.completedGoalsCount;

    emit(
      state.copyWith(
        currentSavings: newSavings,
        totalSavings: state.totalSavings + amount,
        isGoalCompleted: isCompleted,
        completedGoalsCount: newCompletedGoalsCount,
      ),
    );
    _saveState();
  }

  void updateGoal(double newGoal) {
    emit(
      state.copyWith(
        goalAmount: newGoal,
      ),
    );
    _saveState();
  }

  void updateCigarettesAmount(double cigarettesAmount) {
    final newUnsmoked = state.unsmokedCigarettesAmount + cigarettesAmount;

    emit(
      state.copyWith(
        unsmokedCigarettesAmount: newUnsmoked,
      ),
    );
    _saveState();
  }

  void addNewGoal(double newGoalAmount) {
    if (state.isGoalCompleted) {
      setGoal(newGoalAmount);
    }
  }
}
