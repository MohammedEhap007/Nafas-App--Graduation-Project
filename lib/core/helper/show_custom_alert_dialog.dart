import 'package:flutter/material.dart';
import 'package:nafas_app/core/widgets/custom_alert_dialog.dart';

showCustomAlertDialog(
  context, {
  required String alertDialogTitle,
  required String alertDialogContent,
  required String alertDialogButtonOneTitle,
  required String alertDialogButtonTwoTitle,
  VoidCallback? alertDialogButtonOneOnPressed,
}) {
  {
    showDialog(
      context: context,
      builder: (context) => CustomAlertDialog(
        title: alertDialogTitle,
        content: alertDialogContent,
        buttonOneTitle: alertDialogButtonOneTitle,
        buttonOneOnPressed: alertDialogButtonOneOnPressed,
        buttonTwoTitle: alertDialogButtonTwoTitle,
      ),
    );
  }
}
