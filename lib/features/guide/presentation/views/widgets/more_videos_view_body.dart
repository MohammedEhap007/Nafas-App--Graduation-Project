import 'package:flutter/material.dart';
import 'package:nafas_app/core/utils/app_images.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';

class MoreVideosViewBody extends StatelessWidget {
  const MoreVideosViewBody({super.key});

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
        return Column(
          children: [
            Image.asset(Assets.imagesVideoTestImage),
            SizedBox(height: 13),
            Text(
              'لا تتوقف عن التدخين - كتاب هاري الدر',
              style: TextStyles.medium14(context),
            )
          ],
        );
      },
    );
  }
}
