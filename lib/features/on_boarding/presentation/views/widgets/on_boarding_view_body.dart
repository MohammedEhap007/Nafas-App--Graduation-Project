import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:nafas_app/core/utils/app_colors.dart';
import 'package:nafas_app/features/on_boarding/presentation/views/widgets/on_boarding_page_view.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Expanded(child: OnBoardingPageView()),
          DotsIndicator(
            dotsCount: 4,
            decorator: DotsDecorator(
              color: Color(0XFFD9D9D9),
              size: const Size(10.0, 10.0),
              activeColor: AppColors.primaryColor,
              activeSize: const Size(17.0, 8.0),
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          SizedBox(height: 15.0),
        ],
      ),
    );
  }
}
