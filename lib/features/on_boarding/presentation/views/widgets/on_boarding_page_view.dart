import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nafas_app/features/on_boarding/presentation/views/widgets/page_view_item.dart';

import '../../../../../core/utils/app_images.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        PageViewItem(
          image: Assets.imagesOnBoardingItem1,
          title: 'عداد توفير يومي',
          subtitle: 'شاهد كيف تزداد مدخراتك يومًا بعد يوم مع كل سيجارة تتجنبها',
        ),
      ],
    );
  }
}
