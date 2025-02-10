import 'package:flutter/material.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';
import 'package:nafas_app/features/setting/data/models/rules_and_privacy_model.dart';
import 'package:nafas_app/features/setting/presentation/view/widgets/rules_and_privacy_widget.dart';

class PrivacyViewBody extends StatelessWidget {
  const PrivacyViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<RulesAndPrivacyModel> privacy = [
      RulesAndPrivacyModel(
        num: '1',
        title: 'جمع المعلومات',
        content:
            'عند استخدام تطبيق "نفَس"، قد نقوم بجمع معلومات مثل: \n - البيانات التي تقدمها عند إنشاء الحساب (مثل الاسم والبريد الإلكتروني). \n - بيانات الاستخدام مثل تقدمك في خطة الإقلاع عن التدخين.',
      ),
      RulesAndPrivacyModel(
        num: '2',
        title: 'كيف نستخدم معلوماتك؟',
        content:
            '- لتحسين تجربة المستخدم وتقديم محتوى مخصص. \n - لحساب إحصائيات الاستخدام وتقديم تقارير تحفيزية. \n - لحماية أمان التطبيق ومنع أي انتهاكات.',
      ),
      RulesAndPrivacyModel(
          num: '3',
          title: 'مشاركة المعلومات',
          content:
              '- لا نقوم ببيع أو مشاركة بياناتك مع أي طرف ثالث دون موافقتك. \n - قد نشارك البيانات المجهولة لأغراض بحثية وتحليلية لتحسين التطبيق.'),
      RulesAndPrivacyModel(
        num: '4',
        title: 'حماية البيانات',
        content:
            'نتخذ جميع التدابير الأمنية اللازمة لحماية بياناتك من الوصول غير المصرح به أو التعديل أو الحذف.',
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
              'سياسة الخصوصية',
              style: TextStyles.medium20(context),
            ),
            Spacer(flex: 1),
          ],
        ),
        SizedBox(height: 41),
        Expanded(
          child: ListView.builder(
            itemCount: privacy.length,
            itemBuilder: (context, index) {
              return RulesAndPrivacyWidget(
                rulesAndPrivacyModel: privacy[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
