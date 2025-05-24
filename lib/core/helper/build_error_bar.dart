import 'package:flutter/material.dart';
import 'package:nafas_app/core/utils/app_colors.dart';

void buildErrorBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: AppColors.importantButtonsBackgroundColor,
      elevation: 0.0,
      duration: const Duration(seconds: 3),
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      content: Center(
        child: Text(message),
      ),
    ),
  );
}
