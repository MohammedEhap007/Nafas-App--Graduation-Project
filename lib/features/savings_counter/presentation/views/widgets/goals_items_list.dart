import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nafas_app/core/helper/show_custom_dialog.dart';
import 'package:nafas_app/core/utils/app_images.dart';
import 'package:nafas_app/features/savings_counter/data/models/goals_item_model.dart';
import 'package:nafas_app/features/savings_counter/presentation/manger/savings_counter_cubit/savings_counter_cubit.dart';
import 'package:nafas_app/features/savings_counter/presentation/views/achieved_goals_view.dart';
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
          onTap: () {
            showCustomDialog(
              context,
              dialogTitle: 'تعديل الهدف',
              dialogTextFieldHintText: 'المبلغ الجديد',
              dialogButtonTitle: 'تعديل الهدف',
              snackBarMessage: 'تم تعديل الهدف بنجاح',
              isButtonTwoNeeded: true,
              buttonTwoTitle: 'حذف الهدف',
              onPressedCubitAction:
                  context.read<SavingsCounterCubit>().updateGoal,
            );
          },
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
              onPressedCubitAction: context.read<SavingsCounterCubit>().setGoal,
            );
          },
        ),
        GoalsItem(
          goalsItemModel: GoalsItemModel(
            image: Assets.imagesTaskCompleted,
            title: 'الأهداف المحققه',
          ),
          onTap: () {
            context.read<SavingsCounterCubit>().state.completedGoalsCount == 0
                ? Navigator.pushNamed(context, EmptyAchievedGoalsView.routeName)
                : Navigator.pushNamed(context, AchievedGoalsView.routeName);
          },
        ),
      ],
    );
  }
}
