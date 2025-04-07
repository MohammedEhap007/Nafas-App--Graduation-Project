import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nafas_app/core/utils/app_images.dart';
import 'package:nafas_app/core/widgets/custom_button.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../manger/blogs_cubit/blogs_cubit.dart';
import '../../manger/videos_cubit/videos_cubit.dart';

class GuideConnectionError extends StatelessWidget {
  const GuideConnectionError({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(Assets.imagesConnectionError),
          SizedBox(
            height: 30,
          ),
          Text(
            'لا يوجد اتصال بالانترنت',
            style: TextStyles.bold20(context).copyWith(
              color: AppColors.importantButtonsBackgroundColor,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'يرجي التحقق من اتصالك وإعادة المحاولة',
            style: TextStyles.medium18(context).copyWith(
              color: AppColors.importantButtonsBackgroundColor,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 180,
            child: CustomButton(
              onPressed: () {
                context.read<VideosCubit>().fetchVideos(
                      category: 'About',
                    );
                context.read<BlogsCubit>().fetchBlogs(
                      category: 'About',
                    );
              },
              text: 'إعادة المحاولة',
            ),
          ),
        ],
      ),
    );
  }
}
