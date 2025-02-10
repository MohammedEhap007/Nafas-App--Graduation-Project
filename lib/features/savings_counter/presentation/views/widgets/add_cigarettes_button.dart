import 'package:flutter/material.dart';
import 'package:nafas_app/core/utils/app_colors.dart';
import 'package:nafas_app/core/utils/app_images.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';
import 'package:nafas_app/core/widgets/custom_container.dart';

class AddCigarettesButton extends StatelessWidget {
  const AddCigarettesButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 10.0,
        ),
        child: Row(
          children: [
            Image.asset(
              Assets.imagesCigarette,
              width: 28,
              height: 28,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'إضافة سجائر لم تُدخن',
              style: TextStyles.medium18(context).copyWith(
                color: AppColors.primaryTextColor,
              ),
            ),
            Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add,
                color: AppColors.secondaryTextColor,
              ),
              iconSize: 24,
            )
          ],
        ),
      ),
    );
  }
}
