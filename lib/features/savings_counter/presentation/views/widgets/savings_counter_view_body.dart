import 'package:flutter/material.dart';
import 'package:nafas_app/constant.dart';
import 'package:nafas_app/core/widgets/custom_app_bar.dart';
import 'package:nafas_app/features/home/presentation/views/widgets/custom_lable_shape.dart';
import 'package:nafas_app/features/savings_counter/presentation/views/widgets/add_cigarettes_button.dart';
import 'package:nafas_app/features/savings_counter/presentation/views/widgets/add_first_goal_button.dart';
import 'package:nafas_app/features/savings_counter/presentation/views/widgets/add_savings_money_button.dart';
import 'package:nafas_app/features/savings_counter/presentation/views/widgets/goals_section.dart';

class SavingsCounterViewBody extends StatelessWidget {
  const SavingsCounterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: kHorizontalPadding,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(title: 'عداد التعافي'),
            const SizedBox(height: 30),
            CustomLableShape(lable: 'الهدف المحدد'),
            SizedBox(
              height: 12,
            ),
            AddFirstGoalButton(),
            SizedBox(
              height: 30,
            ),
            AddCigarettesButton(),
            SizedBox(
              height: 15,
            ),
            AddSavingsMoneyButton(),
            SizedBox(
              height: 15,
            ),
            GoalsSection(),
          ],
        ),
      ),
    );
  }
}
