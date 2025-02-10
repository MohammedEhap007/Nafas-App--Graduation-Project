import 'package:flutter/material.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';

import 'package:nafas_app/features/setting/data/models/rules_and_privacy_model.dart';
import 'package:nafas_app/features/setting/presentation/view/widgets/rules_and_privacy_widget.dart';

class RuleViewBody extends StatelessWidget {
  const RuleViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<RulesAndPrivacyModel> rules = [
      RulesAndPrivacyModel(
        num: '1',
        title: 'الموافقة على الشروط',
        content:
            'باستخدام تطبيق "نفَس"، فإنك توافق على الامتثال لهذه الشروط والأحكام. إذا كنت لا توافق على أي جزء منها، يُرجى عدم استخدام التطبيق.',
      ),
      RulesAndPrivacyModel(
        num: '2',
        title: 'وصف الخدمة',
        content:
            'يوفر تطبيق "نفَس" أدوات لدعم الإقلاع عن التدخين، مثل عدّاد الاستشفاء، حساب التوفير، مقالات توعوية، وفيديوهات تحفيزية.',
      ),
      RulesAndPrivacyModel(
          num: '3',
          title: 'استخدام التطبيق',
          content:
              '-يُحظر إساءة استخدام التطبيق أو محاولة تعطيله أو التلاعب ببيانات المستخدمين. \n -لا يُسمح بمشاركة محتوى مسيء أو غير قانوني عبر التطبيق.'),
      RulesAndPrivacyModel(
        num: '4',
        title: 'تعديل الشروط',
        content:
            'يحتفظ فريق "نفَس" بالحق في تعديل هذه الشروط في أي وقت، وسيتم إشعار المستخدمين بأي تحديثات هامة.',
      ),
      RulesAndPrivacyModel(
        num: '5',
        title: 'إخلاء المسؤولية',
        content:
            'المعلومات المتوفرة في التطبيق هي لأغراض توعوية فقط، ولا تُعتبر بديلاً عن الاستشارة الطبية المتخصصة.',
      ),
    ];
    return Column(
      children: [
        SizedBox(height: 12),
        Row(
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back)),
            Spacer(flex: 1),
            Text(
              'الشروط والأحكام',
              style: TextStyles.medium20(context),
            ),
            Spacer(flex: 1),
          ],
        ),
        SizedBox(height: 41),
        Expanded(
          child: ListView.builder(
            itemCount: rules.length,
            itemBuilder: (context, index) {
              return RulesAndPrivacyWidget(
                rulesAndPrivacyModel: rules[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
