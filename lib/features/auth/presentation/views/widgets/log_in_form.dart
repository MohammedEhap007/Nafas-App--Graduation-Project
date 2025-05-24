import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nafas_app/core/utils/app_colors.dart';
import 'package:nafas_app/core/utils/app_custom_icons.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';
import 'package:nafas_app/core/widgets/custom_button.dart';
import 'package:nafas_app/core/widgets/custom_text_field.dart';
import 'package:nafas_app/features/auth/presentation/cubits/signin_cubit/signin_cubit.dart';
import 'package:nafas_app/features/auth/presentation/views/forget_password_view.dart';

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
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        spacing: 8,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(
            autovalidateMode: autovalidateMode,
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
            autovalidateMode: autovalidateMode,
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
              } else if (value.length < 8) {
                return 'كلمة المرور يجب أن تكون أكثر من 8 أحرف';
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
                formKey.currentState!.save();
                context.read<SignInCubit>().signInWithEmailAndPassword(
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
