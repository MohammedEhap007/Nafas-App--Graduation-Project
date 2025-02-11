import 'package:flutter/material.dart';
import 'package:nafas_app/features/savings_counter/presentation/views/widgets/custom_dialog.dart';

void showCustomDialog(context) {
  showDialog(
    context: context,
    builder: (context) => const CustomDialog(),
  );
}
