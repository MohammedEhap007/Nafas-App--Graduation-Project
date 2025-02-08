import 'package:flutter/material.dart';
import 'package:nafas_app/core/utils/app_colors.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';

class TreatmentPlanItems extends StatelessWidget {
  const TreatmentPlanItems({super.key, required this.currentIndex});

  final int currentIndex;

  final List<List<String>> plan = const [
    [
      'تقليل عدد السجائر تدريجيًا يوميًا.',
      'تجنب المحفزات مثل القهوة أو الأماكن التي تدخن فيها.',
      'تجربة تمارين التنفس العميق والاسترخاء.',
      'استخدام التطبيق لتتبع عدد السجائر وتقليلها يوميًا.',
    ],
    [
      'شرب الكثير من الماء لتخليص الجسم من النيكوتين.',
      'مضغ العلكة أو تناول وجبات خفيفة صحية عند الشعور بالرغبة في التدخين.',
      'ممارسة الرياضة يوميًا لتحسين المزاج وتقليل التوتر.',
      'استخدام التطبيق لتتبع عدد السجائر وتقليلها يوميًا.',
    ],
    [
      'ممارسة التأمل أو المشي عند الشعور بالتوتر.',
      'مكافأة نفسك عند إتمام أسبوع دون تدخين.',
      ' تتبع التقدم في التطبيق لمعرفة المال والصحة المستفادة.',
    ],
    [
      'تجنب الأصدقاء المدخنين أو الأماكن التي تحفزك على التدخين.',
      'استبدال العادات القديمة بأخرى جديدة، مثل شرب شاي الأعشاب بدلًا من التدخين.',
      'تحديد أهداف طويلة المدى مثل ممارسة رياضة جديدة أو تطوير مهارة.',
      'الاحتفال بمرور شهر بدون تدخين!',
    ],
    [
      'قراءة مقالات محفزة عن فوائد الإقلاع عن التدخين.',
      'تذكير نفسك دائمًا بأنك أقوى من الإدمان!',
      'ابتعد عن الأماكن التي قد تحفزك على العودة للتدخين.',
      'استخدم المال الذي وفرته من عدم شراء السجائر في شيء تحبه.',
    ]
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: plan[currentIndex].map((e) {
        return Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-'),
              SizedBox(width: 5),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    e,
                    style: TextStyles.medium16(context).copyWith(
                      color: AppColors.primaryTextColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
