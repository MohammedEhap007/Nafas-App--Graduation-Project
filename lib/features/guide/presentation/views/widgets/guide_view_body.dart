import 'package:flutter/material.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';
import 'package:nafas_app/features/guide/presentation/views/more_articles_view.dart';
import 'package:nafas_app/features/guide/presentation/views/more_vedios_view.dart';
import 'package:nafas_app/features/guide/presentation/views/widgets/article_list_view.dart';
import 'package:nafas_app/features/guide/presentation/views/widgets/custom_lable_section.dart';
import 'package:nafas_app/features/guide/presentation/views/widgets/tap_bar_list_view.dart';
import 'package:nafas_app/features/guide/presentation/views/widgets/vedios_list_view.dart';

class GuideViewBody extends StatelessWidget {
  const GuideViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 19),
          Text(
            'الفيديوهات والمقالات',
            style: TextStyles.medium20(context),
          ),
          SizedBox(height: 35),
          TapBarListView(),
          SizedBox(height: 32),
          CustomLableSection(
            lable: 'الفيديوهات',
            onTap: () {
              Navigator.pushNamed(context, MoreVediosView.routeName);
            },
          ),
          SizedBox(height: 32),
          VediosListView(),
          SizedBox(height: 50),
          CustomLableSection(
            lable: 'المقالات',
            onTap: () {
              Navigator.pushNamed(context, MoreArticlesView.routeName);
            },
          ),
          SizedBox(height: 32),
          ArticlesListView(),
        ],
      ),
    );
  }
}
