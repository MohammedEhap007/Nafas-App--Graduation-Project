import 'package:flutter/material.dart';
import 'package:nafas_app/constant.dart';
import 'package:nafas_app/core/utils/app_colors.dart';
import 'package:nafas_app/core/utils/app_images.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';

class EmptyAchievedGoalsViewBody extends StatelessWidget {
  const EmptyAchievedGoalsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Assets.imagesError,
              width: 68,
              height: 68,
            ),
            SizedBox(
              height: 40.0,
            ),
            Text(
              'عذراً، لا توجد أهداف محققة بعد!',
              style: TextStyles.medium24(context).copyWith(
                color: AppColors.primaryTextColor,
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              'يبدو أنك لم تحقق أي أهداف حتى الآن. حاول إضافة أهداف جديدة.',
              style: TextStyles.medium16(context).copyWith(
                color: AppColors.secondaryTextColor,
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
