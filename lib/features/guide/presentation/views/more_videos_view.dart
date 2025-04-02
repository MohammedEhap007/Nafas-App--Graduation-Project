import 'package:flutter/material.dart';
import 'package:nafas_app/core/utils/app_colors.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';
import 'package:nafas_app/features/guide/presentation/views/widgets/more_videos_view_body.dart';

class MoreVideosView extends StatelessWidget {
  const MoreVideosView({super.key});
  static const routeName = 'moreVideosView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'عن التدخين',
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
        child: MoreVideosViewBody(),
      ),
    );
  }
}
