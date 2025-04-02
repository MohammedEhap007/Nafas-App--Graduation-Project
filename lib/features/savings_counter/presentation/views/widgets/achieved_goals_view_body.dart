import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nafas_app/constant.dart';
import 'package:nafas_app/features/savings_counter/presentation/views/widgets/achieved_goals_item.dart';

import '../../manger/savings_counter_cubit/savings_counter_cubit.dart';

class AchievedGoalsViewBody extends StatelessWidget {
  const AchievedGoalsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kHorizontalPadding,
      ),
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(
            bottom: 12,
          ),
          child: AchievedGoalsItem(
            currentGoalAmount:
                context.read<SavingsCounterCubit>().state.completedGoals[index],
          ),
        ),
        itemCount:
            context.read<SavingsCounterCubit>().state.completedGoalsCount,
      ),
    );
  }
}
