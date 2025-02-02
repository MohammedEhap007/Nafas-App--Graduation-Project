import 'package:flutter/material.dart';
import 'package:nafas_app/core/utils/app_colors.dart';
import 'package:nafas_app/core/utils/app_custom_icons.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';
import 'package:nafas_app/features/auth/presentation/log_in_view.dart';
import 'package:nafas_app/features/auth/presentation/widgets/custom_button.dart';
import 'package:nafas_app/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:nafas_app/features/auth/presentation/widgets/google_section.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 15,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50),
            Text(
              'إنشاء حساب جديد',
              style: TextStyles.medium24,
            ),
            const SizedBox(height: 30),
            CustomTextField(
              lable: 'الاسم بالكامل ',
              hint: 'الاسم بالكامل ',
              icon: AppCustomIcons.humanIcon,
              validator: (value) {
                if (value == null) {
                  return 'الرجاء إدخال الاسم بالكامل';
                }
                return null;
              },
            ),
            const SizedBox(height: 12),
            CustomTextField(
              lable: 'البريد الإلكتروني',
              hint: 'mail@example.com',
              icon: AppCustomIcons.mailIon,
              validator: (value) {
                if (value == null) {
                  return 'الرجاء إدخال البريد الإلكتروني';
                } else if (!value.contains('@') || !value.contains('.')) {
                  return 'الرجاء إدخال بريد إلكتروني صحيح';
                }
                return null;
              },
            ),
            const SizedBox(height: 12),
            CustomTextField(
              lable: 'كلمة المرور',
              hint: '********',
              icon: AppCustomIcons.lockIcon,
              suffixIcon: AppCustomIcons.hideIcon,
              validator: (value) {
                if (value == null) {
                  return 'الرجاء إدخال كلمة المرور';
                } else if (value.length < 8) {
                  return 'كلمة المرور يجب أن تكون أكثر من 8 أحرف';
                }
                return null;
              },
            ),
            const SizedBox(height: 12),
            CustomTextField(
              lable: 'تأكيد كلمة المرور',
              hint: '********',
              icon: AppCustomIcons.lockIcon,
              suffixIcon: AppCustomIcons.hideIcon,
              validator: (value) {
                if (value == null) {
                  return 'الرجاء إدخال تأكيد كلمة المرور';
                } else if (value.length < 8) {
                  return 'كلمة المرور يجب أن تكون أكثر من 8 أحرف';
                }
                // else if (value != 'كلمة المرور') {
                //   return 'كلمة المرور غير متطابقة';
                // }
                return null;
              },
            ),
            const SizedBox(height: 12),
            CustomButton(
              buttonLable: 'إنشاء حساب',
              onPressed: () {},
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'لديك حساب بالفعل؟',
                  style: TextStyles.medium12.copyWith(),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, LogInView.routeName);
                  },
                  child: Text(
                    'تسجيل الدخول',
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
