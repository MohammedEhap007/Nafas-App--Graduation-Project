import 'package:flutter/material.dart';
import 'package:nafas_app/features/guide/presentation/views/more_articles_view.dart';
import 'package:nafas_app/features/guide/presentation/views/more_videos_view.dart';
import 'package:nafas_app/features/guide/presentation/views/widgets/article_list_view.dart';
import 'package:nafas_app/features/guide/presentation/views/widgets/custom_lable_section.dart';
import 'package:nafas_app/features/guide/presentation/views/widgets/tap_bar_list_view.dart';
import 'package:nafas_app/features/guide/presentation/views/widgets/videos_list_view.dart';

class GuideViewBody extends StatelessWidget {
  const GuideViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          SizedBox(height: 35),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TapBarListView(),
          ),
          SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: CustomLableSection(
              lable: 'الفيديوهات',
              onTap: () {
                Navigator.pushNamed(context, MoreVideosView.routeName);
              },
            ),
          ),
          SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: VideosListView(),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: CustomLableSection(
              lable: 'المقالات',
              onTap: () {
                Navigator.pushNamed(context, MoreArticlesView.routeName);
              },
            ),
          ),
          SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: ArticlesListView(),
          ),
          SizedBox(height: 35),
        ],
      ),
    );
  }
}
