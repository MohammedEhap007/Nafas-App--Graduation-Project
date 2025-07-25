import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nafas_app/core/helper/show_custom_dialog.dart';
import 'package:nafas_app/core/utils/app_images.dart';
import 'package:nafas_app/features/savings_counter/data/models/goals_item_model.dart';
import 'package:nafas_app/features/savings_counter/presentation/manger/savings_counter_cubit/savings_counter_cubit.dart';
import 'package:nafas_app/features/savings_counter/presentation/views/widgets/goals_item.dart';

class AddSavingsMoneyButton extends StatelessWidget {
  const AddSavingsMoneyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GoalsItem(
      goalsItemModel: GoalsItemModel(
        image: Assets.imagesWallet,
        title: 'إضافة فلوس وفرتها',
        icon: Icons.add,
      ),
      onPressed: () {
        showCustomDialog(
          context,
          dialogTitle: 'أدخل المبلغ',
          dialogTextFieldHintText: 'المبلغ',
          dialogButtonTitle: 'إضافة',
          snackBarMessage: 'تم اضافة جنيه',
          isContentNeeded: true,
          onPressedCubitAction:
              context.read<SavingsCounterCubit>().updateSavings,
        );
      },
    );
  }
}
