import 'package:flutter/material.dart';
import 'package:nafas_app/features/auth/presentation/views/forget_password_view.dart';
import 'package:nafas_app/features/auth/presentation/views/log_in_view.dart';
import 'package:nafas_app/features/auth/presentation/views/sign_up_view.dart';
import 'package:nafas_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:nafas_app/features/splash/presentation/views/splash_view.dart';

Route onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());
    case LogInView.routeName:
      return MaterialPageRoute(builder: (context) => const LogInView());
    case SignUpView.routeName:
      return MaterialPageRoute(builder: (context) => const SignUpView());
    case ForgetPasswordView.routeName:
      return MaterialPageRoute(
          builder: (context) => const ForgetPasswordView());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
