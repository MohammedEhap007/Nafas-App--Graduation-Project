import 'package:flutter/material.dart';
import 'package:nafas_app/constant.dart';
import 'package:nafas_app/core/widgets/custom_container.dart';
import 'package:nafas_app/features/savings_counter/presentation/views/widgets/custom_dialog_header.dart';
import 'package:nafas_app/core/widgets/custom_dialog_text_field.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({
    super.key,
    required this.dialogTitle,
    required this.dialogTextFieldHintText,
    required this.dialogButtonTitle,
    required this.snackBarMessage,
    required this.isContentNeeded,
    required this.isButtonTwoNeeded,
    this.buttonTwoTitle,
    this.onPressedCubitAction,
  });

  final String dialogTitle;
  final String dialogTextFieldHintText;
  final String dialogButtonTitle;
  final String snackBarMessage;
  final bool isContentNeeded;
  final bool isButtonTwoNeeded;
  final String? buttonTwoTitle;
  final void Function(double)? onPressedCubitAction;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: CustomContainer(
        hight: isButtonTwoNeeded
            ? MediaQuery.sizeOf(context).height * 0.425
            : MediaQuery.sizeOf(context).height * 0.35,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kHorizontalPadding,
          ),
          child: Column(
            children: [
              CustomDialogHeader(
                title: dialogTitle,
              ),
              SizedBox(
                height: isButtonTwoNeeded
                    ? MediaQuery.sizeOf(context).height * 0.07
                    : MediaQuery.sizeOf(context).height * 0.05,
              ),
              CustomDialogTextField(
                hintText: dialogTextFieldHintText,
                buttonTitle: dialogButtonTitle,
                snackBarMessage: snackBarMessage,
                isContentNeeded: isContentNeeded,
                isButtonTwoNeeded: isButtonTwoNeeded,
                buttonTwoTitle: buttonTwoTitle,
                onPressedCubitAction: onPressedCubitAction,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
