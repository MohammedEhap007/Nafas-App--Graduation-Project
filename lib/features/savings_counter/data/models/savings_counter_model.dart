import 'package:hive/hive.dart';

part 'savings_counter_model.g.dart';

@HiveType(typeId: 0)
class SavingsCounterModel extends HiveObject {
  @HiveField(0)
  double goalAmount;

  @HiveField(1)
  double currentSavings;

  @HiveField(2)
  double totalSavings;

  @HiveField(3)
  double unsmokedCigarettesAmount;

  @HiveField(4)
  bool isGoalCompleted;

  @HiveField(5)
  int completedGoalsCount;

  SavingsCounterModel({
    required this.goalAmount,
    required this.currentSavings,
    required this.totalSavings,
    required this.unsmokedCigarettesAmount,
    required this.isGoalCompleted,
    this.completedGoalsCount = 0,
  });
}
