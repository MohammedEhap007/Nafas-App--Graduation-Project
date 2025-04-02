import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nafas_app/core/utils/app_images.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class AchievedGoalsItem extends StatelessWidget {
  const AchievedGoalsItem({
    super.key,
    required this.currentGoalAmount,
  });

  final double currentGoalAmount;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: SvgPicture.asset(Assets.imagesCup),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 7,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                bottom: 20.0,
                right: 10.0,
              ),
              child: Row(
                children: [
                  Text(
                    'وفرت',
                    style: TextStyles.medium16(context).copyWith(
                      color: AppColors.primaryTextColor,
                    ),
                  ),
                  Text(
                    ' ${currentGoalAmount.toInt()} جنيه ',
                    style: TextStyles.medium16(context).copyWith(
                      color: AppColors.primaryColor,
                    ),
                  ),
                  Text(
                    'بفضل إقلاعك عن التدخين',
                    style: TextStyles.medium16(context).copyWith(
                      color: AppColors.primaryTextColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
