import 'package:flutter/material.dart';
import 'package:nafas_app/core/widgets/custom_dialog.dart';

void showCustomDialog(
  context, {
  required String dialogTitle,
  required String dialogTextFieldHintText,
  required String dialogButtonTitle,
  required String snackBarMessage,
  bool isContentNeeded = false,
  bool isButtonTwoNeeded = false,
  String? buttonTwoTitle,
}) {
  showDialog(
    context: context,
    builder: (context) => CustomDialog(
      dialogTitle: dialogTitle,
      dialogTextFieldHintText: dialogTextFieldHintText,
      dialogButtonTitle: dialogButtonTitle,
      snackBarMessage: snackBarMessage,
      isContentNeeded: isContentNeeded,
      isButtonTwoNeeded: isButtonTwoNeeded,
      buttonTwoTitle: buttonTwoTitle,
    ),
  );
}
