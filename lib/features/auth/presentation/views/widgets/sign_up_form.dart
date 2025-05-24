import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nafas_app/core/utils/app_custom_icons.dart';
import 'package:nafas_app/core/widgets/custom_button.dart';
import 'package:nafas_app/core/widgets/custom_text_field.dart';
import 'package:nafas_app/features/auth/presentation/cubits/signup_cubit/signup_cubit.dart';

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
  String? name, email, password;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

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
            onSaved: (value) {
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
            onSaved: (value) {
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
            controller: passwordController,
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
            onSaved: (value) {
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
            controller: confirmPasswordController,
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
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'الرجاء إدخال تأكيد كلمة المرور';
              } else if (value != passwordController.text) {
                return 'كلمة المرور غير متطابقة';
              }
              return null;
            },
          ),
          CustomButton(
            text: 'إنشاء حساب',
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                context.read<SignUpCubit>().createUserWithEmailAndPassword(
                      name!.trim(),
                      email!.trim(),
                      password!.trim(),
                    );
              } else {
                setState(() {
                  autovalidateMode = AutovalidateMode.always;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
