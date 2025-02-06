import 'package:flutter/material.dart';
import 'package:nafas_app/core/utils/app_colors.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';

class WelcomeSection extends StatelessWidget {
  const WelcomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        Text(
          'مرحباً بك من جديد',
          style: TextStyles.medium24(context),
        ),
        Text(
          'سجل دخولك لتتمكن من استخدام هذه الخدمات',
          style: TextStyles.medium16(context).copyWith(
            color: AppColors.secondaryTextColor,
          ),
        ),
      ],
    );
  }
}
