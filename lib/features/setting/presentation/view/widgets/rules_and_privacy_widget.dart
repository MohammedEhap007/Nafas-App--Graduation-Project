import 'package:flutter/material.dart';
import 'package:nafas_app/core/utils/app_colors.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';
import 'package:nafas_app/features/setting/data/models/rules_and_privacy_model.dart';

class RulesAndPrivacyWidget extends StatelessWidget {
  const RulesAndPrivacyWidget({
    super.key,
    required this.rulesAndPrivacyModel,
  });

  final RulesAndPrivacyModel rulesAndPrivacyModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 12),
        Row(
          children: [
            Text(
              '${rulesAndPrivacyModel.num}. ',
              style: TextStyles.medium18(context),
            ),
            Text(
              rulesAndPrivacyModel.title,
              style: TextStyles.medium18(context),
            ),
          ],
        ),
        SizedBox(height: 12),
        Text(
          rulesAndPrivacyModel.content,
          style: TextStyles.medium18(context).copyWith(
            color: AppColors.secondaryTextColor,
          ),
        ),
      ],
    );
  }
}
