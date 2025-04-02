import 'package:flutter/material.dart';
import 'package:nafas_app/features/auth/presentation/views/forget_password_view.dart';
import 'package:nafas_app/features/auth/presentation/views/log_in_view.dart';
import 'package:nafas_app/features/auth/presentation/views/sign_up_view.dart';
import 'package:nafas_app/features/guide/presentation/views/more_articles_view.dart';
import 'package:nafas_app/features/guide/presentation/views/more_videos_view.dart';
import 'package:nafas_app/features/home/presentation/views/nav_bar.dart';
import 'package:nafas_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:nafas_app/features/savings_counter/presentation/views/achieved_goals_view.dart';
import 'package:nafas_app/features/setting/presentation/view/account_data_view.dart';
import 'package:nafas_app/features/setting/presentation/view/privacy_view.dart';
import 'package:nafas_app/features/setting/presentation/view/rules_view.dart';
import 'package:nafas_app/features/savings_counter/presentation/views/empty_achieved_goals_view.dart';
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

    case NavBarView.routeName:
      return MaterialPageRoute(builder: (context) => const NavBarView());

    case EmptyAchievedGoalsView.routeName:
      return MaterialPageRoute(
          builder: (context) => const EmptyAchievedGoalsView());

    case AchievedGoalsView.routeName:
      return MaterialPageRoute(builder: (context) => const AchievedGoalsView());

    case MoreVideosView.routeName:
      return MaterialPageRoute(builder: (context) => const MoreVideosView());

    case MoreArticlesView.routeName:
      return MaterialPageRoute(builder: (context) => const MoreArticlesView());

    case AccountDataView.routeName:
      return MaterialPageRoute(builder: (context) => const AccountDataView());

    case RulesView.routeName:
      return MaterialPageRoute(builder: (context) => const RulesView());

    case PrivacyView.routeName:
      return MaterialPageRoute(builder: (context) => const PrivacyView());

    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
