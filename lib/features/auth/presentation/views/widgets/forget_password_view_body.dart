import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nafas_app/core/utils/app_custom_icons.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';
import 'package:nafas_app/core/widgets/custom_button.dart';
import 'package:nafas_app/core/widgets/custom_text_field.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'نسيت كلمة المرور؟',
              style: TextStyles.medium28,
            ),
            const SizedBox(
              height: 8,
            ),
            Text('يمكنك استعادة كلمة المرور الأن عبر البريد',
                style: TextStyles.medium18),
            SizedBox(height: 84),
            SvgPicture.asset(
              AppCustomIcons.forgetPasswordAvatar,
              width: 200,
              height: 200,
            ),
            CustomTextField(
              lable: 'البريد الإلكتروني',
              hint: 'mail@example.com',
              icon: AppCustomIcons.mailIon,
              validator: (value) {
                return ' ( البريد غير صحيح )';
              },
            ),
            SizedBox(height: 20),
            CustomButton(
              text: 'إعادة تعيين كلمة المرور',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
