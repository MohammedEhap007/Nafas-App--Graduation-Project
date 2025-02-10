import 'package:flutter/material.dart';
import 'package:nafas_app/core/utils/app_colors.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';
import 'package:nafas_app/core/widgets/custom_container.dart';

class AddFirstGoal extends StatelessWidget {
  const AddFirstGoal({super.key});

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
                'ليس لديك أي أهداف بعد',
                style: TextStyles.medium20(context).copyWith(
                  color: AppColors.primaryTextColor,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'إضافة هدف',
                  style: TextStyles.medium20(context).copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ));
  }
}
