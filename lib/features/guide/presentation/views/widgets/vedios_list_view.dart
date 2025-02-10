import 'package:flutter/material.dart';
import 'package:nafas_app/core/utils/app_images.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';

class VediosListView extends StatelessWidget {
  const VediosListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Column(
              children: [
                Image.asset(Assets.vedioTestimage),
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
