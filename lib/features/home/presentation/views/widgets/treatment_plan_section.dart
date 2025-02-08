import 'package:flutter/material.dart';
import 'package:nafas_app/features/home/presentation/views/widgets/tap_to_expand.dart';

class TreatmentPlanSection extends StatelessWidget {
  const TreatmentPlanSection({super.key});

  final List<String> text = const [
    'الأسبوع الأول – الاستعداد للإقلاع',
    'الأسبوع الثاني – الإقلاع الفعلي',
    'الأسبوع الثالث – تثبيت العادات الصحية',
    'الأسبوع الرابع – انتهاء الإدمان النفسي',
    'بعد الشهر الأول – الاستمرار والالتزام',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: text.map((e) {
        return Padding(
          padding: EdgeInsets.only(top: 12.0),
          child: TapToExpandWidget(
            text: e,
            currentIndex: text.indexOf(e),
          ),
        );
      }).toList(),
    );
  }
}
