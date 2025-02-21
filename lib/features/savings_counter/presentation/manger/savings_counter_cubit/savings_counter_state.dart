part of 'savings_counter_cubit.dart';

class SavingsCounterState extends Equatable {
  final double goalAmount;
  final double currentSavings;
  final double unsmokedCigarettesAmount;
  final bool isGoalCompleted;

  const SavingsCounterState({
    required this.goalAmount,
    required this.currentSavings,
    required this.unsmokedCigarettesAmount,
    required this.isGoalCompleted,
  });

  factory SavingsCounterState.initial() {
    return const SavingsCounterState(
      goalAmount: 0,
      currentSavings: 0,
      unsmokedCigarettesAmount: 0,
      isGoalCompleted: false,
    );
  }

  SavingsCounterState copyWith({
    double? goalAmount,
    double? currentSavings,
    double? unsmokedCigarettesAmount,
    bool? isGoalCompleted,
  }) {
    return SavingsCounterState(
      goalAmount: goalAmount ?? this.goalAmount,
      currentSavings: currentSavings ?? this.currentSavings,
      unsmokedCigarettesAmount:
          unsmokedCigarettesAmount ?? this.unsmokedCigarettesAmount,
      isGoalCompleted: isGoalCompleted ?? this.isGoalCompleted,
    );
  }

  @override
  List<Object> get props =>
      [goalAmount, currentSavings, unsmokedCigarettesAmount, isGoalCompleted];
}
