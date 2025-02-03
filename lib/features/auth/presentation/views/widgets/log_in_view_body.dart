import 'package:flutter/material.dart';
import 'package:nafas_app/core/utils/app_colors.dart';
import 'package:nafas_app/core/utils/app_custom_icons.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';
import 'package:nafas_app/features/auth/presentation/views/forget_password_view.dart';
import 'package:nafas_app/features/auth/presentation/views/sign_up_view.dart';
import 'package:nafas_app/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:nafas_app/features/auth/presentation/views/widgets/custom_text_field.dart';
import 'package:nafas_app/features/auth/presentation/views/widgets/google_section.dart';
import 'package:nafas_app/features/auth/presentation/views/widgets/welcome_section.dart';

class LogInViewBody extends StatelessWidget {
  const LogInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 15,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 80),
            WelcomeSection(),
            const SizedBox(height: 52),
            CustomTextField(
              lable: 'البريد الإلكتروني',
              hint: 'mail@example.com',
              icon: AppCustomIcons.mailIon,
            ),
            const SizedBox(height: 12),
            CustomTextField(
              lable: 'كلمة المرور',
              hint: '********',
              icon: AppCustomIcons.lockIcon,
              suffixIcon: AppCustomIcons.hideIcon,
            ),
            const SizedBox(height: 12),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, ForgetPasswordView.routeName);
              },
              child: Text(
                'نسيت كلمة المرور؟',
                style: TextStyles.medium12.copyWith(
                  color: AppColors.importantButtonsBackgroundColor,
                ),
              ),
            ),
            const SizedBox(height: 33),
            CustomButton(
              buttonLable: 'تسجيل الدخول',
              onPressed: () {},
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'ليس لديك حساب؟',
                  style: TextStyles.medium12.copyWith(),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, SignUpView.routeName);
                  },
                  child: Text(
                    'انشاء حساب جديد',
                    style: TextStyles.medium12.copyWith(
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            GoogleSection(),
          ],
        ),
      ),
    );
  }
}
