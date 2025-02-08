import 'package:flutter/material.dart';
import 'package:nafas_app/core/utils/app_colors.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';

class CustomLableShape extends StatelessWidget {
  const CustomLableShape({super.key, required this.lable});
  final String lable;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 21,
            vertical: 9,
          ),
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: AppColors.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
          ),
          child: Text(lable,
              style: TextStyles.bold16(context).copyWith(color: Colors.white)),
        ),
      ],
    );
  }
}
