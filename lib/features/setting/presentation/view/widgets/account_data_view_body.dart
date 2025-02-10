import 'package:flutter/material.dart';
import 'package:nafas_app/core/utils/app_colors.dart';
import 'package:nafas_app/core/utils/app_custom_icons.dart';
import 'package:nafas_app/core/utils/app_images.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';
import 'package:nafas_app/core/widgets/custom_button.dart';
import 'package:nafas_app/core/widgets/custom_text_field.dart';

class AccountDataViewBody extends StatelessWidget {
  const AccountDataViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 12),
        Row(
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back)),
            Spacer(flex: 1),
            Text(
              'الشروط والأحكام',
              style: TextStyles.medium20(context),
            ),
            Spacer(flex: 1),
          ],
        ),
        SizedBox(height: 41),
        CircleAvatar(
          radius: 60,
          backgroundImage: AssetImage(Assets.selfieAvatar),
        ),
        CustomTextField(
          lable: 'الإسم الأول',
          hint: 'محمد',
          icon: AppCustomIcons.humanIcon,
        ),
        SizedBox(height: 20),
        CustomTextField(
          lable: 'الإسم الأخير',
          hint: 'أبو النجا',
          icon: AppCustomIcons.humanIcon,
        ),
        SizedBox(height: 36),
        Row(
          spacing: 20,
          children: [
            Expanded(child: CustomButton(onPressed: () {}, text: 'حفظ')),
            Expanded(
              child: SizedBox(
                width: double.infinity,
                height: 55.0,
                child: TextButton(
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    backgroundColor: AppColors.importantButtonsBackgroundColor,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'إلغاء',
                    style: TextStyles.bold18(context).copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
