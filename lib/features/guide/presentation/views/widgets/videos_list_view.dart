import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nafas_app/core/utils/app_colors.dart';
import 'package:nafas_app/features/guide/presentation/manger/videos_cubit/videos_cubit.dart';
import 'package:nafas_app/features/guide/presentation/views/widgets/videos_list_view_item.dart';

class VideosListView extends StatelessWidget {
  const VideosListView({super.key});

  @override
  Widget build(BuildContext context) {
    
    return BlocBuilder<VideosCubit, VideosState>(
      builder: (context, state) {
        if (state is VideosSuccess) {
          return AspectRatio(
            aspectRatio: 8 / 5,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.videos.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: VideosListViewItem(
                    videoUrl: state.videos[index].url!,
                    imageUrl: state.videos[index].thumbnail ??
                        'https://fdn.gsmarena.com/imgroot/news/23/02/youtube-testing-1080p-premium/-1200/gsmarena_000.jpg',
                    title: state.videos[index].title!,
                  ),
                );
              },
            ),
          );
        } else if (state is VideosFailure) {
          return Center(
            child: Text(state.errorMessage),
          );
        } else {
          return Center(
              child: CircularProgressIndicator(
            color: AppColors.primaryColor,
          ));
        }
      },
    );
  }
}
