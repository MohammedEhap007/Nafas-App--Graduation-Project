import 'package:flutter/material.dart';
import 'package:nafas_app/features/auth/presentation/views/widgets/log_in_view_body.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});
  static const routeName = 'logIn';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LogInViewBody(),
      ),
    );
  }
}
