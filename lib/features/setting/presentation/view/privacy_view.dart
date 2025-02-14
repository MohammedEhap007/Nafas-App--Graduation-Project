import 'package:flutter/material.dart';
import 'package:nafas_app/core/utils/app_colors.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';
import 'package:nafas_app/features/setting/presentation/view/widgets/privacy_view_body.dart';

class PrivacyView extends StatelessWidget {
  const PrivacyView({super.key});
  static const routeName = 'privacyView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'سياسة الخصوصية',
            style: TextStyles.medium20(context),
          ),
          centerTitle: true,
          backgroundColor: AppColors.primaryBackgroundColor,
          scrolledUnderElevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: const PrivacyViewBody(),
        ));
  }
}
