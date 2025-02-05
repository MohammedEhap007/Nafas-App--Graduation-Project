import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nafas_app/core/utils/app_colors.dart';
import 'package:nafas_app/core/utils/app_custom_icons.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';

class GoogleSection extends StatelessWidget {
  const GoogleSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Divider(
                color: AppColors.secondaryTextColor,
              ),
            ),
            const SizedBox(width: 10),
            Text(
              'أو الإستمرار بواسطة',
              style: TextStyles.medium14(context),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Divider(
                color: AppColors.secondaryTextColor,
              ),
            ),
          ],
        ),
        const SizedBox(height: 30),
        ElevatedButton(
          onPressed: () {},
          child: SvgPicture.asset(
            AppCustomIcons.googleIcon,
          ),
        ),
      ],
    );
  }
}
