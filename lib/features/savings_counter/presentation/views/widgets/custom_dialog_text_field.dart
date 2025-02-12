import 'package:flutter/material.dart';
import 'package:nafas_app/core/utils/app_colors.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';
import 'package:nafas_app/core/widgets/custom_button.dart';

class CustomDialogTextField extends StatefulWidget {
  const CustomDialogTextField({
    super.key,
  });

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
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                hintText: 'المبلغ',
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
              height: MediaQuery.sizeOf(context).height * 0.01,
            ),
            CustomButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Processing Data'),
                    ),
                  );
                  Navigator.pop(context);
                }
              },
              text: 'إضافة الهدف',
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.01,
            ),
          ],
        ),
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
