import 'package:flutter/material.dart';
import 'package:nafas_app/constant.dart';
import 'package:nafas_app/core/widgets/custom_container.dart';
import 'package:nafas_app/features/savings_counter/presentation/views/widgets/custom_dialog_header.dart';
import 'package:nafas_app/features/savings_counter/presentation/views/widgets/custom_dialog_text_field.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: CustomContainer(
        hight: MediaQuery.sizeOf(context).height * 0.3,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kHorizontalPadding,
          ),
          child: Column(
            children: [
              CustomDialogHeader(
                title: 'أدخل مبلغ الهدف',
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.02,
              ),
              CustomDialogTextField(),
            ],
          ),
        ),
      ),
    );
  }
}
