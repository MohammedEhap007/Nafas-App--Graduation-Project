import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nafas_app/core/utils/app_colors.dart';
import 'package:nafas_app/core/utils/app_custom_icons.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';
import 'package:nafas_app/core/widgets/custom_button.dart';
import 'package:nafas_app/core/widgets/custom_text_field.dart';
import 'package:nafas_app/features/auth/presentation/views/forget_password_view.dart';
import 'package:nafas_app/features/home/presentation/views/nav_bar.dart';

class LogInForm extends StatefulWidget {
  const LogInForm({
    super.key,
  });

  @override
  State<LogInForm> createState() => _LogInFormState();
}

class _LogInFormState extends State<LogInForm> {
  bool hiddenPassword = true;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? email, password;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        spacing: 8,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(
            lable: 'البريد الإلكتروني',
            hint: 'mail@example.com',
            icon: AppCustomIcons.mailIcon,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            onSaved: (value) {
              email = value;
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'الرجاء إدخال البريد الإلكتروني';
              }
              return null;
            },
          ),
          CustomTextField(
            lable: 'كلمة المرور',
            hint: '********',
            icon: AppCustomIcons.lockIcon,
            suffixIcon: InkWell(
              onTap: () {
                setState(() {
                  hiddenPassword = !hiddenPassword;
                });
              },
              child: hiddenPassword
                  ? SvgPicture.asset(
                      AppCustomIcons.hideIcon,
                      fit: BoxFit.scaleDown,
                    )
                  : Icon(Icons.remove_red_eye),
            ),
            keyboardType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.done,
            isPassword: hiddenPassword,
            onSaved: (value) {
              password = value;
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'الرجاء إدخال كلمة المرور';
              }
              return null;
            },
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, ForgetPasswordView.routeName);
            },
            child: Text(
              'نسيت كلمة المرور؟',
              style: TextStyles.medium14(context).copyWith(
                color: AppColors.importantButtonsBackgroundColor,
              ),
            ),
          ),
          const SizedBox(height: 25),
          CustomButton(
            text: 'تسجيل الدخول',
            onPressed: () {
              if (formKey.currentState!.validate()) {
                Navigator.pushNamed(context, NavBarView.routeName);
              }
            },
          ),
        ],
      ),
    );
  }
}
