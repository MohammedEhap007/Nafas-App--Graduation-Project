import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nafas_app/constant.dart';
import 'package:nafas_app/core/utils/app_colors.dart';
import 'package:nafas_app/core/utils/app_images.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';
import 'package:nafas_app/core/widgets/custom_button.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({
    super.key,
    required this.title,
    required this.content,
    required this.buttonOneTitle,
    required this.buttonTwoTitle,
    this.buttonOneOnPressed,
  });

  final String title;
  final String content;
  final String buttonOneTitle;
  final void Function()? buttonOneOnPressed;
  final String buttonTwoTitle;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.primaryBackgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      title: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: kHorizontalPadding,
        ),
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: Color(0XFFFF4D4D),
              radius: 30,
              child: SvgPicture.asset(
                Assets.warningAvatar,
              ),
            ),
            SizedBox(height: 30),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyles.medium24(context).copyWith(
                color: AppColors.primaryTextColor,
              ),
            ),
          ],
        ),
      ),
      content: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: kHorizontalPadding,
        ),
        child: Text(
          content,
          textAlign: TextAlign.center,
          style: TextStyles.medium18(context).copyWith(
            color: AppColors.secondaryTextColor,
          ),
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: kHorizontalPadding,
          ),
          child: Row(
            spacing: 28,
            children: [
              Expanded(
                child: SizedBox(
                  height: 48,
                  child: CustomButton(
                    onPressed: buttonOneOnPressed,
                    text: buttonOneTitle,
                    isError: true,
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 48,
                  child: CustomButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    text: buttonTwoTitle,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
