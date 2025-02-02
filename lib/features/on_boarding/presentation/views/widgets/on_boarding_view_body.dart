import 'package:flutter/material.dart';
import 'package:nafas_app/constant.dart';
import 'package:nafas_app/core/services/shared_preferences_singleton.dart';
import 'package:nafas_app/core/utils/app_colors.dart';
import 'package:nafas_app/core/widgets/custom_button.dart';
import 'package:nafas_app/features/auth/presentation/views/login_view.dart';
import 'package:nafas_app/features/on_boarding/presentation/views/widgets/on_boarding_page_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  var currentPage = 0;

  @override
  void initState() {
    pageController = PageController();

    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Expanded(
            child: OnBoardingPageView(
              pageController: pageController,
            ),
          ),
          SmoothPageIndicator(
            controller: pageController,
            count: 4,
            effect: ExpandingDotsEffect(
              expansionFactor: 2.0,
              dotHeight: 10.0,
              dotWidth: 10.0,
              spacing: 10.0,
              dotColor: Color(0XFFD9D9D9),
              activeDotColor: AppColors.primaryColor,
            ),
          ),
          SizedBox(height: 15.0),
          Visibility(
            visible: currentPage == 3,
            maintainAnimation: true,
            maintainState: true,
            maintainSize: true,
            child: CustomButton(
              onPressed: () {
                Prefs.setBool(kIsOnBoardingSeen, true);
                Navigator.pushReplacementNamed(
                  context,
                  LoginView.routeName,
                );
              },
              text: 'ابدأ الأن',
            ),
          ),
          SizedBox(height: 30.0),
        ],
      ),
    );
  }
}
