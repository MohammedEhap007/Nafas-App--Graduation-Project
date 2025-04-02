import 'package:flutter/material.dart';
import 'package:nafas_app/core/utils/app_colors.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';
import 'package:nafas_app/core/widgets/custom_container.dart';

class SavingsProgressBar extends StatelessWidget {
  const SavingsProgressBar({
    super.key,
    required this.savedAmount,
    required this.goalAmount,
  });

  final double savedAmount;
  final double goalAmount;

  @override
  Widget build(BuildContext context) {
    double progress = (savedAmount / goalAmount).clamp(0.0, 1.0);
    int percentage = (progress * 100).toInt();

    return CustomContainer(
      width: MediaQuery.sizeOf(context).width,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 24,
        ),
        child: Column(
          children: [
            RichText(
              text: TextSpan(
                style: TextStyles.medium20(context).copyWith(
                  color: AppColors.primaryTextColor,
                  fontFamily: 'Tajawal',
                  height: 1.3,
                ),
                children: [
                  TextSpan(
                    text: 'وفرت حتى الآن: ',
                  ),
                  TextSpan(
                    text: '${savedAmount.toInt()}',
                    style: TextStyles.medium20(context).copyWith(
                      color: AppColors.primaryColor,
                    ),
                  ),
                  const TextSpan(text: ' من '),
                  TextSpan(
                    text: "${goalAmount.toInt()}",
                    style: TextStyles.medium20(context).copyWith(
                      color: AppColors.primaryColor,
                    ),
                  ),
                  const TextSpan(text: ' جنيه'),
                ],
              ),
            ),
            SizedBox(height: 10),
            Stack(
              children: [
                Container(
                  height: 28,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.primaryBackgroundColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                AnimatedContainer(
                  duration: Duration(milliseconds: 700),
                  height: 28,
                  width: (MediaQuery.sizeOf(context).width - 92) * progress,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "$percentage%",
                      style: TextStyles.bold20(context).copyWith(
                        color: percentage > 45
                            ? Colors.white
                            : AppColors.primaryColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
