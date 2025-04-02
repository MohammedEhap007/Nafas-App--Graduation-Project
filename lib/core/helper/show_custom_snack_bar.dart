import 'package:flutter/material.dart';
import 'package:nafas_app/core/utils/app_colors.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';

showCustomSnackBar(
  context, {
  String? content,
  required String message,
  required bool isSucceeded,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      width: MediaQuery.sizeOf(context).width * 0.65,
      backgroundColor: Colors.transparent,
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      duration: const Duration(seconds: 2),
      content: ConstrainedBox(
        constraints: const BoxConstraints(
          minHeight: 50,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: isSucceeded
                ? Color(0XFF28C76F)
                : AppColors.importantButtonsBackgroundColor,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 12.0,
              ),
              child: content == null
                  ? Text(
                      message,
                      style: TextStyles.bold12(context).copyWith(
                        color: Colors.white,
                      ),
                    )
                  : Text(
                      '${message.substring(0, 8)} $content${message.substring(8)}',
                      style: TextStyles.bold12(context).copyWith(
                        color: Colors.white,
                      ),
                    ),
            ),
          ),
        ),
      ),
    ),
  );
}
