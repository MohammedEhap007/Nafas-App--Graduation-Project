import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nafas_app/features/on_boarding/presentation/views/on_boarding_view.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedSplashScreen(
        splash: Lottie.asset(
          'assets/animations/splash_logo.json',
          fit: BoxFit.cover,
        ),
        nextScreen: const OnBoardingView(),
        duration: 3800,
        splashIconSize: double.infinity,
      ),
    );
  }
}
