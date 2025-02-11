import 'package:flutter/material.dart';
import 'package:nafas_app/core/utils/app_colors.dart';
import 'package:nafas_app/core/utils/app_images.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';
import 'package:nafas_app/core/widgets/custom_container.dart';
import 'package:nafas_app/features/savings_counter/presentation/views/widgets/goals_items_list.dart';

class GoalsSection extends StatefulWidget {
  const GoalsSection({super.key});

  @override
  State<GoalsSection> createState() => _GoalsSectionState();
}

class _GoalsSectionState extends State<GoalsSection> {
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      duration: const Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
      child: CustomContainer(
        width: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 10.0,
              ),
              child: Row(
                children: [
                  Image.asset(
                    Assets.imagesGoal,
                    width: 28,
                    height: 28,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'الأهداف',
                    style: TextStyles.medium18(context).copyWith(
                      color: AppColors.primaryTextColor,
                    ),
                  ),
                  Spacer(),
                  AnimatedRotation(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.fastOutSlowIn,
                    turns: isTapped ? 0.25 : 0.5,
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          isTapped = !isTapped;
                        });
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        color: isTapped
                            ? AppColors.primaryColor
                            : AppColors.secondaryTextColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            isTapped ? GoalsItemsList() : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
