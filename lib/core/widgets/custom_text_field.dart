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
    this.keyboardType,
    this.isPassword = false,
    this.textInputAction,
    this.onChanged,
    this.onSaved,
    this.controller,
  });
  final String lable;
  final String hint;
  final String icon;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final bool isPassword;
  final TextInputAction? textInputAction;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final TextEditingController? controller;
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
        SizedBox(
          height: 70,
          child: TextFormField(
            controller: controller,
            onSaved: onSaved,
            onChanged: onChanged,
            obscureText: isPassword,
            keyboardType: keyboardType,
            textInputAction: textInputAction,
            validator: validator,
            cursorColor: AppColors.primaryColor,
            decoration: InputDecoration(
              hintText: hint,
              errorStyle: TextStyles.medium14(context).copyWith(
                color: AppColors.importantButtonsBackgroundColor,
                height: 1,
              ),
              errorMaxLines: 1,
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
              focusedErrorBorder: border(),
              prefixIcon: SvgPicture.asset(
                icon,
                fit: BoxFit.scaleDown,
              ),
              suffixIcon: suffixIcon,
            ),
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
