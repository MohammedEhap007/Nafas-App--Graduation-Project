import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:nafas_app/core/utils/app_colors.dart';
import 'package:nafas_app/core/utils/app_custom_icons.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';
import 'package:nafas_app/features/guide/presentation/views/guide_view.dart';
import 'package:nafas_app/features/home/presentation/views/home_view.dart';
import 'package:nafas_app/features/savings_counter/presentation/views/savings_counter_view.dart';
import 'package:nafas_app/features/setting/presentation/view/settings_view.dart';

class NavBarView extends StatefulWidget {
  const NavBarView({super.key});
  static const String routeName = 'navBar';

  @override
  State<NavBarView> createState() => _NavBarViewState();
}

class _NavBarViewState extends State<NavBarView> {
  int selectedIndex = 0;
  static const List<Widget> pages = [
    HomeView(),
    SavingsCounterView(),
    GuideView(),
    SettingsView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 12,
            bottom: 20,
            right: 16,
            left: 16,
          ),
          child: GNav(
            tabActiveBorder: Border.symmetric(
              horizontal: BorderSide(
                width: 2,
                color: Colors.transparent,
              ),
            ),
            tabBorderRadius: 8,
            gap: 5,
            color: AppColors.secondaryTextColor,
            iconSize: 24,
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 10,
            ),
            tabs: [
              GButton(
                leading: SvgPicture.asset(
                  AppCustomIcons.homeIcon,
                  height: 24,
                  width: 24,
                  colorFilter: ColorFilter.mode(
                    selectedIndex == 0
                        ? AppColors.secondaryColor
                        : AppColors.secondaryTextColor,
                    BlendMode.srcIn,
                  ),
                ),
                icon: Icons.circle,
                iconSize: 0,
                text: 'الرئيسية',
                textStyle: TextStyles.medium12(context).copyWith(
                  color: AppColors.secondaryColor,
                ),
                rippleColor: AppColors.secondaryColor.withAlpha(25),
                backgroundColor: AppColors.secondaryColor.withAlpha(25),
              ),
              GButton(
                leading: SvgPicture.asset(
                  AppCustomIcons.counterIcon,
                  height: 24,
                  width: 24,
                  colorFilter: ColorFilter.mode(
                    selectedIndex == 1
                        ? Color(0xff00AF6A)
                        : AppColors.secondaryTextColor,
                    BlendMode.srcIn,
                  ),
                ),
                icon: Icons.circle,
                iconSize: 0,
                text: 'العداد',
                textStyle: TextStyles.medium12(context).copyWith(
                  color: Color(0xff00AF6A),
                ),
                rippleColor: Color(0xff00AF6A).withAlpha(25),
                backgroundColor: Color(0xff00AF6A).withAlpha(25),
              ),
              GButton(
                leading: SvgPicture.asset(
                  AppCustomIcons.newsPaperIcon,
                  height: 24,
                  width: 24,
                  colorFilter: ColorFilter.mode(
                    selectedIndex == 2
                        ? Color(0xff7F00FF)
                        : AppColors.secondaryTextColor,
                    BlendMode.srcIn,
                  ),
                ),
                icon: Icons.circle,
                iconSize: 0,
                text: 'الدليل',
                textStyle: TextStyles.medium12(context).copyWith(
                  color: Color(0xff7F00FF),
                ),
                rippleColor: Color(0xff7F00FF).withAlpha(25),
                backgroundColor: Color(0xff7F00FF).withAlpha(25),
              ),
              GButton(
                leading: SvgPicture.asset(
                  AppCustomIcons.lastIconInNavBar,
                  height: 24,
                  width: 24,
                  colorFilter: ColorFilter.mode(
                    selectedIndex == 3
                        ? Colors.black
                        : AppColors.secondaryTextColor,
                    BlendMode.srcIn,
                  ),
                ),
                icon: Icons.circle,
                iconSize: 0,
                text: 'التجارب',
                textStyle: TextStyles.medium12(context).copyWith(
                  color: Colors.black,
                ),
                rippleColor: Colors.black.withAlpha(25),
                backgroundColor: Colors.black.withAlpha(25),
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
      ),
    );
  }
}
