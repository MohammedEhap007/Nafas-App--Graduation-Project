import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nafas_app/core/utils/app_colors.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';
import 'package:nafas_app/features/guide/presentation/views/widgets/more_article_view_body.dart';

import '../manger/videos_cubit/videos_cubit.dart';

class MoreArticlesView extends StatelessWidget {
  const MoreArticlesView({super.key});
  static const routeName = 'moreArticlesView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.read<VideosCubit>().category,
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
        child: MoreArticleViewBody(),
      ),
    );
  }
}
