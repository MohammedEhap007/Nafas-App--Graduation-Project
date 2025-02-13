import 'package:flutter/material.dart';
import 'package:nafas_app/core/helper/show_custom_alert_dialog.dart';
import 'package:nafas_app/core/helper/show_custom_snack_bar.dart';
import 'package:nafas_app/core/utils/app_colors.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';
import 'package:nafas_app/core/widgets/custom_button.dart';

class CustomDialogTextField extends StatefulWidget {
  const CustomDialogTextField({
    super.key,
    required this.hintText,
    required this.buttonTitle,
    required this.snackBarMessage,
    required this.isContentNeeded,
    required this.isButtonTwoNeeded,
    this.buttonTwoTitle,
  });

  final String hintText;
  final String buttonTitle;
  final String snackBarMessage;
  final bool isContentNeeded;
  final bool isButtonTwoNeeded;
  final String? buttonTwoTitle;

  @override
  State<CustomDialogTextField> createState() => _CustomDialogTextFieldState();
}

class _CustomDialogTextFieldState extends State<CustomDialogTextField> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _textEditingController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return '* ادخل رقم صحيح';
              }
              if (value.contains('.') ||
                  value.contains(',') ||
                  value.contains('-') ||
                  value.contains(' ') ||
                  value.startsWith('0')) {
                return '* ادخل رقم صحيح';
              }
              return null;
            },
            cursorColor: AppColors.secondaryTextColor,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: TextStyles.medium16(context).copyWith(
                color: AppColors.secondaryTextColor,
              ),
              border: buildBorder(),
              focusedBorder: buildBorder(),
              enabledBorder: buildBorder(),
              disabledBorder: buildBorder(),
              errorBorder: buildErrorBorder(),
              focusedErrorBorder: buildErrorBorder(),
              errorStyle: TextStyles.medium16(context).copyWith(
                color: AppColors.importantButtonsBackgroundColor,
                height: 0,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.03,
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.048,
            child: CustomButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  showCustomSnackBar(
                    context,
                    message: widget.snackBarMessage,
                    isSucceeded: true,
                    content: widget.isContentNeeded
                        ? _textEditingController.text
                        : null,
                  );
                  Navigator.pop(context);
                }
              },
              text: widget.buttonTitle,
            ),
          ),
          widget.isButtonTwoNeeded
              ? Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.015,
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.048,
                      child: CustomButton(
                        onPressed: () {
                          showCustomAlertDialog(
                            context,
                            alertDialogTitle: 'هل أنت متأكد ؟',
                            alertDialogContent:
                                'لن تتمكن من استعادة الهدف بعد الحذف!',
                            alertDialogButtonOneTitle: 'حذف',
                            alertDialogButtonOneOnPressed: () {},
                            alertDialogButtonTwoTitle: 'الغاء',
                          );
                        },
                        text: widget.buttonTwoTitle!,
                        isError: true,
                      ),
                    ),
                  ],
                )
              : SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.015,
                ),
        ],
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

  OutlineInputBorder buildErrorBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        width: 1.0,
        color: AppColors.importantButtonsBackgroundColor,
      ),
    );
  }
}
