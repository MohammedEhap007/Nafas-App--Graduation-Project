import 'package:hive/hive.dart';

part 'savings_counter_model.g.dart';

@HiveType(typeId: 0)
class SavingsCounterModel {
  @HiveField(0)
  final double goalAmount;

  @HiveField(1)
  final double currentSavings;

  @HiveField(2)
  final double totalSavings;

  @HiveField(3)
  final double unsmokedCigarettesAmount;

  @HiveField(4)
  final bool isGoalCompleted;

  @HiveField(5)
  final int completedGoalsCount;

  @HiveField(6)
  final List<double> completedGoals; // Store completed goals separately

  SavingsCounterModel({
    required this.goalAmount,
    required this.currentSavings,
    required this.totalSavings,
    required this.unsmokedCigarettesAmount,
    required this.isGoalCompleted,
    required this.completedGoalsCount,
    required this.completedGoals,
  });
}
