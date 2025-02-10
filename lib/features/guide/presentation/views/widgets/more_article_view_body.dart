import 'package:flutter/material.dart';
import 'package:nafas_app/core/utils/app_images.dart';
import 'package:nafas_app/core/widgets/custom_container.dart';

class MoreArticleViewBody extends StatelessWidget {
  const MoreArticleViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 16,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      itemBuilder: (context, index) {
        return CustomContainer(
          child: Image.asset(Assets.articleTextImage),
        );
      },
    );
  }
}
