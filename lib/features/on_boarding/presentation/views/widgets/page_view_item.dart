import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nafas_app/constant.dart';
import 'package:nafas_app/core/utils/app_colors.dart';
import 'package:nafas_app/features/auth/presentation/views/login_view.dart';

import '../../../../../core/services/shared_preferences_singleton.dart';
import '../../../../../core/utils/app_text_styles.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.isVisible,
  });

  final String image;
  final String title;
  final String subtitle;
  final bool isVisible;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 33.0),
      child: SizedBox(
        width: double.infinity,
        height: MediaQuery.sizeOf(context).height * 0.7,
        child: Column(
          children: [
            Visibility(
              visible: isVisible,
              child: Align(
                alignment: AlignmentDirectional.centerStart,
                child: InkWell(
                  onTap: () {
                    Prefs.setBool(kIsOnBoardingSeen, true);
                    Navigator.pushReplacementNamed(
                      context,
                      LoginView.routeName,
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 14.0,
                    ),
                    child: Text(
                      'تخطي',
                      style: TextStyles.bold18.copyWith(
                        color: AppColors.secondaryTextColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(image),
                SizedBox(
                  height: 25,
                ),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyles.medium28.copyWith(
                    color: AppColors.primaryTextColor,
                    height: 1.5,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.5),
                  child: Text(
                    subtitle,
                    textAlign: TextAlign.center,
                    style: TextStyles.medium18.copyWith(
                      color: AppColors.secondaryTextColor,
                      height: 1.5,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
