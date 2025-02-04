import 'package:flutter/material.dart';
import 'package:nafas_app/features/auth/presentation/views/widgets/log_in_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static const routeName = 'login';

  @override
  Widget build(BuildContext context) {
    return const LogInViewBody();
  }
}
