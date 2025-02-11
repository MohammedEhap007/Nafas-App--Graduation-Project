import 'package:flutter/material.dart';
import 'package:nafas_app/core/utils/app_colors.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';

class CustomDialogTextField extends StatelessWidget {
  const CustomDialogTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.secondaryTextColor,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        hintText: 'المبلغ',
        hintStyle: TextStyles.medium16(context).copyWith(
          color: AppColors.secondaryTextColor,
        ),
        border: buildBorder(),
        focusedBorder: buildBorder(),
        enabledBorder: buildBorder(),
        disabledBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        width: 1.0,
        color: AppColors.secondaryTextColor,
      ),
    );
  }
}
