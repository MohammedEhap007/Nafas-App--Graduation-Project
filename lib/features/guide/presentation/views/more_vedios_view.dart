import 'package:flutter/material.dart';
import 'package:nafas_app/core/utils/app_colors.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';
import 'package:nafas_app/features/guide/presentation/views/widgets/more_vedios_view_body.dart';

class MoreVediosView extends StatelessWidget {
  const MoreVediosView({super.key});
  static const routeName = 'moreVediosView';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'عن التدخين',
            style: TextStyles.medium20(context),
          ),
          centerTitle: true,
          backgroundColor: AppColors.primaryBackgroundColor,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: MoreVediosViewBody(),
        ),
      ),
    );
  }
}
