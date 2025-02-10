import 'package:flutter/material.dart';
import 'package:nafas_app/core/utils/app_colors.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';

class CustomLableSection extends StatelessWidget {
  const CustomLableSection(
      {super.key, required this.lable, required this.onTap});
  final String lable;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          lable,
          style: TextStyles.medium20(context),
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            'عرض المزيد',
            style: TextStyles.medium16(context).copyWith(
              color: AppColors.primaryColor,
            ),
          ),
        )
      ],
    );
  }
}
