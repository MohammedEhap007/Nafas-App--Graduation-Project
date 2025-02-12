import 'package:flutter/material.dart';
import 'package:nafas_app/core/widgets/custom_dialog.dart';

void showCustomDialog(
  context, {
  required String dialogTitle,
  required String dialogTextFieldHintText,
  required String dialogButtonTitle,
}) {
  showDialog(
    context: context,
    builder: (context) => CustomDialog(
      dialogTitle: dialogTitle,
      dialogTextFieldHintText: dialogTextFieldHintText,
      dialogButtonTitle: dialogButtonTitle,
    ),
  );
}
