import 'package:flutter/material.dart';
import 'package:nafas_app/core/utils/app_images.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';
import 'package:nafas_app/core/widgets/custom_container.dart';
import 'package:nafas_app/features/home/presentation/views/widgets/custom_lable_shape.dart';

class DidUKnowSection extends StatelessWidget {
  const DidUKnowSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomLableShape(
          lable: 'هل تعلم ؟',
        ),
        SizedBox(
          height: 12,
        ),
        CustomContainer(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 23,
              vertical: 30,
            ),
            child: Row(
              children: [
                Image.asset(
                  Assets.imagesIdea,
                  width: 63,
                  height: 63,
                ),
                SizedBox(width: 15),
                Expanded(
                  child: Text(
                    'الإقلاع عن التدخين لمدة 20 دقيقة فقط يخفض معدل ضربات القلب وضغط الدم',
                    style: TextStyles.medium16(context),
                    softWrap: true,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
