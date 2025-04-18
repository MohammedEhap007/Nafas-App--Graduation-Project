import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nafas_app/core/utils/app_custom_icons.dart';
import 'package:nafas_app/core/widgets/custom_button.dart';
import 'package:nafas_app/core/widgets/custom_text_field.dart';
import 'package:nafas_app/features/home/presentation/views/nav_bar.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({
    super.key,
  });

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool hiddenPassword = true;
  bool hiddenConfirmPassword = true;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? name, email, password, confirmPassword;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        spacing: 8,
        children: [
          CustomTextField(
            lable: 'الاسم بالكامل ',
            hint: 'الاسم بالكامل ',
            icon: AppCustomIcons.humanIcon,
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.next,
            onChanged: (value) {
              name = value;
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'الرجاء إدخال الاسم بالكامل';
              }
              return null;
            },
          ),
          CustomTextField(
            lable: 'البريد الإلكتروني',
            hint: 'mail@example.com',
            icon: AppCustomIcons.mailIcon,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            onChanged: (value) {
              email = value;
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'الرجاء إدخال البريد الإلكتروني';
              } else if (!value.contains('@') || !value.contains('.')) {
                return 'الرجاء إدخال بريد إلكتروني صحيح';
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
            isPassword: hiddenPassword,
            textInputAction: TextInputAction.next,
            onChanged: (value) {
              password = value;
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'الرجاء إدخال كلمة المرور';
              } else if (value.length < 8) {
                return 'كلمة المرور يجب أن تكون أكثر من 8 أحرف';
              }
              return null;
            },
          ),
          CustomTextField(
            lable: 'تأكيد كلمة المرور',
            hint: '********',
            icon: AppCustomIcons.lockIcon,
            suffixIcon: InkWell(
              onTap: () {
                setState(() {
                  hiddenConfirmPassword = !hiddenConfirmPassword;
                });
              },
              child: hiddenConfirmPassword
                  ? SvgPicture.asset(
                      AppCustomIcons.hideIcon,
                      fit: BoxFit.scaleDown,
                    )
                  : Icon(Icons.remove_red_eye),
            ),
            keyboardType: TextInputType.visiblePassword,
            isPassword: hiddenConfirmPassword,
            textInputAction: TextInputAction.done,
            onChanged: (value) {
              confirmPassword = value;
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'الرجاء إدخال تأكيد كلمة المرور';
              } else if (value != password) {
                return 'كلمة المرور غير متطابقة';
              }
              return null;
            },
          ),
          CustomButton(
            text: 'إنشاء حساب',
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
