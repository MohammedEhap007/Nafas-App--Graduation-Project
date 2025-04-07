import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:nafas_app/core/utils/app_colors.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';

import '../../../../../core/helper/launch_url.dart';

class ArticleListViewItem extends StatelessWidget {
  const ArticleListViewItem({
    super.key,
    required this.blogUrl,
    required this.imageUrl,
    required this.title,
  });

  final String blogUrl;
  final String imageUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: GestureDetector(
        onTap: () {
          launchCustomUrl(context, blogUrl);
        },
        child: SizedBox(
          width: 140,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CachedNetworkImage(
                height: double.infinity,
                imageUrl: imageUrl,
                fit: BoxFit.fill,
              ),
              Container(
                width: double.infinity,
                height: 56,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor.withAlpha(128),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  title,
                  style: TextStyles.medium14(context).copyWith(
                    color: Colors.white,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
