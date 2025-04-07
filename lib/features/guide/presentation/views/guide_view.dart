import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nafas_app/features/guide/presentation/manger/videos_cubit/videos_cubit.dart';
import 'package:nafas_app/features/guide/presentation/views/widgets/guide_connection_error.dart';
import 'package:nafas_app/features/guide/presentation/views/widgets/guide_view_body.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';

class GuideView extends StatelessWidget {
  const GuideView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'الفيديوهات والمقالات',
            style: TextStyles.medium20(context),
          ),
          centerTitle: true,
          backgroundColor: AppColors.primaryBackgroundColor,
          scrolledUnderElevation: 0,
          automaticallyImplyLeading: false,
        ),
        body: BlocBuilder<VideosCubit, VideosState>(
          builder: (context, state) {
            if (state is VideosSuccess) {
              return GuideViewBody();
            } else if (state is VideosFailure) {
              return GuideConnectionError();
            } else {
              return Center(
                child: CircularProgressIndicator(
                  color: AppColors.primaryColor,
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
