import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nafas_app/core/utils/app_colors.dart';
import 'package:nafas_app/features/guide/presentation/manger/blogs_cubit/blogs_cubit.dart';
import 'package:nafas_app/features/guide/presentation/views/widgets/article_list_view_item.dart';

class MoreArticleViewBody extends StatelessWidget {
  const MoreArticleViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlogsCubit, BlogsState>(
      builder: (context, state) {
        if (state is BlogsSuccess) {
          return GridView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: state.blogs.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
            ),
            itemBuilder: (context, index) {
              return ArticleListViewItem(
                blogUrl: state.blogs[index].url!,
                imageUrl: state.blogs[index].thumbnail ??
                    'https://efsharibari.health.gov.il/media/2439/smoking-cessation-challenges.jpg?width=880&height=530&rnd=133747964610500000',
                title: state.blogs[index].title!,
              );
            },
          );
        } else if (state is BlogsFailure) {
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
