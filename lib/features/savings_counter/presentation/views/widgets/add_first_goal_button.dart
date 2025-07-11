import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nafas_app/core/helper/show_custom_dialog.dart';
import 'package:nafas_app/core/utils/app_colors.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';
import 'package:nafas_app/core/widgets/custom_container.dart';
import 'package:nafas_app/features/savings_counter/presentation/manger/savings_counter_cubit/savings_counter_cubit.dart';

class AddFirstGoalButton extends StatelessWidget {
  const AddFirstGoalButton({
    super.key,
    required this.text,
    required this.subText,
  });

  final String text;
  final String subText;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyles.medium20(context).copyWith(
                color: AppColors.primaryTextColor,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                showCustomDialog(
                  context,
                  dialogTitle: 'أدخل مبلغ الهدف',
                  dialogTextFieldHintText: 'المبلغ',
                  dialogButtonTitle: 'إضافة الهدف',
                  snackBarMessage: 'تم اضافة الهدف بنجاح',
                  onPressedCubitAction:
                      context.read<SavingsCounterCubit>().setGoal,
                );
              },
              child: Text(
                subText,
                style: TextStyles.medium20(context).copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
