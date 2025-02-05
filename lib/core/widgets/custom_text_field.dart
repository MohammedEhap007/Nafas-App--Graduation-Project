import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nafas_app/core/utils/app_colors.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.lable,
    required this.hint,
    required this.icon,
    this.validator,
    this.suffixIcon,
  });
  final String lable;
  final String hint;
  final String icon;
  final String? suffixIcon;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          lable,
          style: TextStyles.medium16(context),
        ),
        TextFormField(
          validator: validator,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyles.medium16(context).copyWith(
              color: AppColors.secondaryTextColor,
            ),
            filled: true,
            fillColor: Colors.white,
            constraints: BoxConstraints(
              maxHeight: 55,
            ),
            border: border(),
            enabledBorder: border(),
            focusedBorder: border(),
            prefixIcon: SvgPicture.asset(
              icon,
              fit: BoxFit.scaleDown,
            ),
            suffixIcon: suffixIcon != null
                ? SvgPicture.asset(
                    suffixIcon!,
                    fit: BoxFit.scaleDown,
                  )
                : null,
          ),
        ),
      ],
    );
  }

  OutlineInputBorder border() {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white,
      ),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
