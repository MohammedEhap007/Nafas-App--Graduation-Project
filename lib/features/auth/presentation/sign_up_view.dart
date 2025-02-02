import 'package:flutter/material.dart';
import 'package:nafas_app/features/auth/presentation/widgets/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static const routeName = 'signUp';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignUpViewBody(),
    );
  }
}
