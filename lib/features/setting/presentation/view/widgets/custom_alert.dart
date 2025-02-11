import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nafas_app/core/utils/app_colors.dart';
import 'package:nafas_app/core/utils/app_images.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';

class CustomAlert extends StatelessWidget {
  const CustomAlert({
    super.key,
    required this.content,
    required this.title,
    required this.button1,
    required this.button2,
  });
  final String content;
  final String title;
  final Widget button1, button2;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      backgroundColor: Colors.white,
      icon: CircleAvatar(
        radius: 40,
        backgroundColor: AppColors.importantButtonsBackgroundColor,
        child: SvgPicture.asset(
          Assets.warningAvatar,
        ),
      ),
      iconPadding: EdgeInsets.symmetric(vertical: 40),
      title: Text(
        title,
        style: TextStyles.medium16(context),
      ),
      titlePadding: EdgeInsets.only(bottom: 10),
      contentPadding: EdgeInsets.symmetric(
        horizontal: 40,
      ),
      content: Text(
        content,
        style: TextStyles.medium18(context).copyWith(
          color: AppColors.secondaryTextColor,
        ),
        textAlign: TextAlign.center,
      ),
      actionsPadding: EdgeInsets.symmetric(vertical: 40, horizontal: 40),
      actions: [
        Row(
          spacing: 20,
          children: [
            Expanded(child: button1),
            Expanded(
              child: button2,
            ),
          ],
        )
      ],
    );
  }
}
