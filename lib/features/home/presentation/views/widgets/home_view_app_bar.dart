import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nafas_app/core/utils/app_custom_icons.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';

class HomeViewAppBar extends StatelessWidget {
  const HomeViewAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          SvgPicture.asset(AppCustomIcons.blueHumanIcon),
          const SizedBox(width: 15),
          Text(
            'مرحبا بك, يا محمد أحمد',
            style: TextStyles.medium16(context),
          ),
          Spacer(),
          Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: SvgPicture.asset(AppCustomIcons.bellIcon),
            ),
          ),
        ],
      ),
    );
  }
}
