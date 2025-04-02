import 'package:flutter/material.dart';
import 'package:nafas_app/core/utils/app_colors.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';
import 'package:nafas_app/features/savings_counter/presentation/views/widgets/achieved_goals_view_body.dart';

class AchievedGoalsView extends StatelessWidget {
  const AchievedGoalsView({super.key});

  static const routeName = 'achievedGoalsView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryBackgroundColor,
        title: Text(
          'الأهداف المحققه',
          style: TextStyles.medium18(context).copyWith(
            color: AppColors.primaryTextColor,
          ),
        ),
        centerTitle: true,
      ),
      body: AchievedGoalsViewBody(),
    );
  }
}
