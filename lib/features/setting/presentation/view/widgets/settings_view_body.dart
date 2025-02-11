import 'package:flutter/material.dart';
import 'package:nafas_app/core/utils/app_images.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';
import 'package:nafas_app/features/setting/presentation/view/widgets/settings_actions.dart';

class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 11),
          Text(
            'الملف الشخصي',
            style: TextStyles.medium20(context),
          ),
          SizedBox(height: 41),
          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage(Assets.imagesSelfieAvatar),
          ),
          SizedBox(height: 20),
          Text(
            'محمد أبو النجا',
            style: TextStyles.medium20(context),
          ),
          SizedBox(height: 30),
          SettingsActions(),
        ],
      ),
    );
  }
}
