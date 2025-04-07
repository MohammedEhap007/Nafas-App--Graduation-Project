import 'package:flutter/material.dart';
import 'package:nafas_app/features/guide/presentation/views/widgets/article_list_view_item.dart';

class ArticlesListView extends StatelessWidget {
  const ArticlesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 8 /3.6,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 12),
            child: ArticleListViewItem(),
          );
        },
      ),
    );
  }
}
