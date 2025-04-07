import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nafas_app/core/utils/app_colors.dart';
import 'package:nafas_app/features/guide/presentation/manger/blogs_cubit/blogs_cubit.dart';
import 'package:nafas_app/features/guide/presentation/views/widgets/article_list_view_item.dart';

class ArticlesListView extends StatelessWidget {
  const ArticlesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlogsCubit, BlogsState>(
      builder: (context, state) {
        if (state is BlogsSuccess) {
          return AspectRatio(
            aspectRatio: 8 / 3.6,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.blogs.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: ArticleListViewItem(
                    blogUrl: state.blogs[index].url!,
                    imageUrl: state.blogs[index].thumbnail ??
                        'https://efsharibari.health.gov.il/media/2439/smoking-cessation-challenges.jpg?width=880&height=530&rnd=133747964610500000',
                    title: state.blogs[index].title!,
                  ),
                );
              },
            ),
          );
        } else if (state is BlogsFailure) {
          return Center(
            child: Text(state.errorMessage),
          );
        } else {
          return Center(
            child: CircularProgressIndicator(
              color: AppColors.primaryColor,
            ),
          );
        }
      },
    );
  }
}
