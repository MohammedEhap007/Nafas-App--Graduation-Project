import 'package:flutter/material.dart';
import 'package:nafas_app/core/utils/app_images.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';
import 'package:nafas_app/core/widgets/custom_container.dart';
import 'package:nafas_app/features/home/presentation/views/widgets/custom_lable_shape.dart';

class DidUKnowSection extends StatefulWidget {
  const DidUKnowSection({
    super.key,
  });

  @override
  State<DidUKnowSection> createState() => _DidUKnowSectionState();
}

class _DidUKnowSectionState extends State<DidUKnowSection> {
  var index = 0;
  final List<String> texts = const [
    'الإقلاع عن التدخين لمدة 20 دقيقة فقط يخفض معدل ضربات القلب وضغط الدم.',
    'الرئتين تبدأان في التعافي بعد 12 ساعة فقط من التوقف عن التدخين.',
    'خطر الإصابة بأمراض القلب ينخفض إلى النصف بعد عام واحد من الإقلاع.',
    'الإقلاع عن التدخين يحسن القدرة على ممارسة الرياضة بنسبة تصل إلى 30% خلال أشهر قليلة.',
    'المدخنين السابقين يشعرون بتحسن في حاسة التذوق والشم بعد أيام قليلة من التوقف.',
    'التدخين يحتوي على أكثر من 7,000 مادة كيميائية، منها 70 مادة مسرطنة.',
    'التدخين يزيد من خطر الجلطات الدماغية، لكن التوقف عنه يقلل هذا الخطر تدريجيًا.',
    'الهواء داخل المنزل يصبح أنقى خلال أيام قليلة بعد الإقلاع عن التدخين.',
    'المشي لمدة 30 دقيقة يوميًا بعد الإقلاع عن التدخين يمكن أن يساعد في تقليل أعراض الانسحاب.',
    ' المدخنين السابقين يظهرون تحسنًا في وظائف المخ والذاكرة بعد الإقلاع عن التدخين.',
    'التوقف عن التدخين يمكن أن يساعدك في تحسين شهية الطعام وتناول وجبات صحية أكثر.',
    'ممارسة التأمل والتمارين التنفسية يمكن أن تساعد في التخفيف من رغبة العودة للتدخين.',
  ];

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
        InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () {
            setState(() {});
            if (index == texts.length - 1) {
              index = 0;
            } else {
              index += 1;
            }
          },
          child: CustomContainer(
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
                      texts[index],
                      style: TextStyles.medium16(context),
                      softWrap: true,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
