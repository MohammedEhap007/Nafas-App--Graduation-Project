import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:nafas_app/core/helper/launch_url.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';

class VideosListViewItem extends StatelessWidget {
  const VideosListViewItem({
    super.key,
    required this.videoUrl,
    required this.imageUrl,
    required this.title,
  });

  final String videoUrl;
  final String imageUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            launchCustomUrl(context, videoUrl);
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: CachedNetworkImage(
                  imageUrl: imageUrl,
                  width: 225,
                  fit: BoxFit.fill,
                ),
              ),
              Icon(
                Icons.play_arrow_rounded,
                size: 32,
                color: Colors.white.withAlpha(200),
              )
            ],
          ),
        ),
        SizedBox(height: 13),
        SizedBox(
          width: 225,
          child: Text(
            title,
            style: TextStyles.medium14(context),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }
}
