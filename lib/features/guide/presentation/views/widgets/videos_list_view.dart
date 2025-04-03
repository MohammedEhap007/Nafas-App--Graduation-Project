import 'package:flutter/material.dart';
import 'package:nafas_app/core/utils/app_images.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';

class VideosListView extends StatelessWidget {
  const VideosListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.25,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(Assets.imagesVideoTestImage),
                      Icon(
                        Icons.play_arrow_rounded,
                        size: 32,
                        color: Colors.white.withAlpha(200),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 13),
                Text(
                  'لا تتوقف عن التدخين - كتاب هاري الدر',
                  style: TextStyles.medium14(context),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
