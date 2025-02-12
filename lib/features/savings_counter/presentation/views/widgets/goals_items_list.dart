import 'package:flutter/material.dart';
import 'package:nafas_app/core/helper/show_custom_dialog.dart';
import 'package:nafas_app/core/utils/app_images.dart';
import 'package:nafas_app/features/savings_counter/data/models/goals_item_model.dart';
import 'package:nafas_app/features/savings_counter/presentation/views/empty_achieved_goals_view.dart';
import 'package:nafas_app/features/savings_counter/presentation/views/widgets/goals_item.dart';

class GoalsItemsList extends StatelessWidget {
  const GoalsItemsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GoalsItem(
          goalsItemModel: GoalsItemModel(
            image: Assets.imagesPencil,
            title: 'تعديل الهدف الحالي',
          ),
          onTap: () {},
        ),
        GoalsItem(
          goalsItemModel: GoalsItemModel(
            image: Assets.imagesPlus,
            title: 'إضافة هدف جديد',
          ),
          onTap: () {
            showCustomDialog(
              context,
              dialogTitle: 'أدخل مبلغ الهدف',
              dialogTextFieldHintText: 'المبلغ',
              dialogButtonTitle: 'إضافة الهدف',
              snackBarMessage: 'تم اضافة الهدف بنجاح',
            );
          },
        ),
        GoalsItem(
          goalsItemModel: GoalsItemModel(
            image: Assets.imagesTaskCompleted,
            title: 'الأهداف المحققه',
          ),
          onTap: () {
            Navigator.pushNamed(context, EmptyAchievedGoalsView.routeName);
          },
        ),
      ],
    );
  }
}
