part of 'savings_counter_cubit.dart';

class SavingsCounterState extends Equatable {
  final double goalAmount;
  final double currentSavings;
  final double totalSavings;
  final double unsmokedCigarettesAmount;
  final bool isGoalCompleted;
  final int completedGoalsCount;

  const SavingsCounterState({
    required this.goalAmount,
    required this.currentSavings,
    required this.totalSavings,
    required this.unsmokedCigarettesAmount,
    required this.isGoalCompleted,
    required this.completedGoalsCount,
  });

  factory SavingsCounterState.initial() {
    return const SavingsCounterState(
      goalAmount: 0,
      currentSavings: 0,
      totalSavings: 0,
      unsmokedCigarettesAmount: 0,
      isGoalCompleted: false,
      completedGoalsCount: 0,
    );
  }

  SavingsCounterState copyWith({
    double? goalAmount,
    double? currentSavings,
    double? totalSavings,
    double? unsmokedCigarettesAmount,
    bool? isGoalCompleted,
    int? completedGoalsCount,
  }) {
    return SavingsCounterState(
      goalAmount: goalAmount ?? this.goalAmount,
      currentSavings: currentSavings ?? this.currentSavings,
      totalSavings: totalSavings ?? this.totalSavings,
      unsmokedCigarettesAmount:
          unsmokedCigarettesAmount ?? this.unsmokedCigarettesAmount,
      isGoalCompleted: isGoalCompleted ?? this.isGoalCompleted,
      completedGoalsCount: completedGoalsCount ?? this.completedGoalsCount,
    );
  }

  @override
  List<Object> get props => [
        goalAmount,
        currentSavings,
        totalSavings,
        unsmokedCigarettesAmount,
        isGoalCompleted,
        completedGoalsCount,
      ];
}
