import 'package:flutter/material.dart';
import 'package:nafas_app/core/utils/app_colors.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';
import 'package:nafas_app/core/widgets/custom_container.dart';
import 'package:nafas_app/features/savings_counter/data/models/goals_item_model.dart';

class GoalsItem extends StatelessWidget {
  const GoalsItem({
    super.key,
    required this.goalsItemModel,
    this.onPressed,
  });

  final GoalsItemModel goalsItemModel;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 10.0,
        ),
        child: Row(
          children: [
            Image.asset(
              goalsItemModel.image,
              width: 28,
              height: 28,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              goalsItemModel.title,
              style: TextStyles.medium18(context).copyWith(
                color: AppColors.primaryTextColor,
              ),
            ),
            Spacer(),
            IconButton(
              onPressed: onPressed,
              icon: Icon(
                goalsItemModel.icon,
                color: AppColors.secondaryTextColor,
              ),
              iconSize: 24,
              
            )
          ],
        ),
      ),
    );
  }
}
