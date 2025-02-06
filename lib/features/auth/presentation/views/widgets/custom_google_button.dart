import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nafas_app/core/utils/app_colors.dart';
import 'package:nafas_app/core/utils/app_custom_icons.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({super.key, required this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(50),
      highlightColor: AppColors.secondaryTextColor,
      child: Container(
        width: 100,
        height: 55,
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 12,
        ),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1.20,
              color: AppColors.secondaryTextColor,
            ),
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        child: SizedBox(
          width: 24,
          height: 24,
          child: SvgPicture.asset(AppCustomIcons.googleIcon),
        ),
      ),
    );
  }
}
