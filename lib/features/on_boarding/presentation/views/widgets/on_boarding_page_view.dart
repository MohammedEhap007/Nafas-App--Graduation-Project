import 'package:flutter/material.dart';
import 'package:nafas_app/features/on_boarding/presentation/views/widgets/page_view_item.dart';

import '../../../../../core/utils/app_images.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          isVisible: true,
          image: Assets.imagesOnBoardingItem1,
          title: 'عداد توفير يومي',
          subtitle:
              'شاهد كيف تزداد مدخراتك يومًا بعد يوم مع كل سيجارة تتجنبها.',
        ),
        PageViewItem(
          isVisible: true,
          image: Assets.imagesOnBoardingItem2,
          title: 'مقالات مفيدة',
          subtitle:
              'اقرأ مقالات مُلهمة ونصائح عملية لتدعم قرارك بالإقلاع عن التدخين.',
        ),
        PageViewItem(
          isVisible: true,
          image: Assets.imagesOnBoardingItem3,
          title: 'فيديوهات تفاعلية مشوقة',
          subtitle:
              'اكتشف فيديوهات تعليمية وتحفيزية تساعدك في كل خطوة على الطريق.',
        ),
        PageViewItem(
          isVisible: false,
          image: Assets.imagesOnBoardingItem4,
          title: 'تجارب ملهمه',
          subtitle: 'اكتشف قصصًا واقعية لأشخاص تغلبوا على التدخين.',
        ),
      ],
    );
  }
}
