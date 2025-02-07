// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:nafas_app/core/utils/app_colors.dart';
import 'package:nafas_app/core/utils/app_custom_icons.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';
import 'package:nafas_app/features/home/presentation/views/home_view.dart';

class NavBarView extends StatefulWidget {
  const NavBarView({super.key});
  static const String routeName = '/navBar';

  @override
  State<NavBarView> createState() => _NavBarViewState();
}

class _NavBarViewState extends State<NavBarView> {
  int selectedIndex = 0;
  static const List<Widget> pages = [
    HomeView(),
    HomeView(),
    HomeView(),
    HomeView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
          bottom: 10,
          right: 5,
          left: 5,
        ),
        child: GNav(
          haptic: true,
          tabBorderRadius: 15,
          curve: Curves.easeOutExpo,
          duration: const Duration(milliseconds: 500),
          gap: 8,
          color: AppColors.importantButtonsBackgroundColor,
          iconSize: 24,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          tabs: [
            GButton(
              leading: SvgPicture.asset(
                AppCustomIcons.homeIcon,
                height: 28,
                width: 28,
                colorFilter: ColorFilter.mode(
                  selectedIndex == 0 ? Color(0xff246BFE) : Colors.grey,
                  BlendMode.srcIn,
                ),
              ),
              icon: Icons.circle,
              iconSize: 0,
              text: 'الرئيسيه',
              textStyle: TextStyles.medium12(context).copyWith(
                color: Color(0xff246BFE),
              ),
              rippleColor: Color(0xff246BFE).withOpacity(0.1),
              backgroundColor: Color(0xff246BFE).withOpacity(0.1),
            ),
            GButton(
              leading: SvgPicture.asset(
                AppCustomIcons.counterIcon,
                height: 28,
                width: 28,
                colorFilter: ColorFilter.mode(
                  selectedIndex == 1 ? Color(0xff00AF6A) : Colors.grey,
                  BlendMode.srcIn,
                ),
              ),
              icon: Icons.circle,
              iconSize: 0,
              text: 'العداد',
              textStyle: TextStyles.medium12(context).copyWith(
                color: Color(0xff00AF6A),
              ),
              rippleColor: Color(0xff00AF6A).withOpacity(0.1),
              backgroundColor: Color(0xff00AF6A).withOpacity(0.1),
            ),
            GButton(
              leading: SvgPicture.asset(
                AppCustomIcons.newsPaperIcon,
                height: 28,
                width: 28,
                colorFilter: ColorFilter.mode(
                  selectedIndex == 2 ? Color(0xff7F00FF) : Colors.grey,
                  BlendMode.srcIn,
                ),
              ),
              icon: Icons.circle,
              iconSize: 0,
              text: 'الدليل',
              textStyle: TextStyles.medium12(context).copyWith(
                color: Color(0xff7F00FF),
              ),
              rippleColor: Color(0xff7F00FF).withOpacity(0.1),
              backgroundColor: Color(0xff7F00FF).withOpacity(0.1),
            ),
            GButton(
              leading: SvgPicture.asset(
                AppCustomIcons.lasticonInNavBar,
                height: 28,
                width: 28,
                colorFilter: ColorFilter.mode(
                  selectedIndex == 3 ? Color(0xff000000) : Colors.grey,
                  BlendMode.srcIn,
                ),
              ),
              icon: Icons.circle,
              iconSize: 0,
              text: 'التجارب',
              textStyle: TextStyles.medium12(context).copyWith(
                color: Color(0xff000000),
              ),
              rippleColor: Color(0xff000000).withOpacity(0.1),
              backgroundColor: Color(0xff000000).withOpacity(0.1),
            ),
          ],
          selectedIndex: selectedIndex,
          onTabChange: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
