import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nafas_app/core/helper/show_custom_dialog.dart';
import 'package:nafas_app/core/utils/app_images.dart';
import 'package:nafas_app/features/savings_counter/data/models/goals_item_model.dart';
import 'package:nafas_app/features/savings_counter/presentation/manger/savings_counter_cubit/savings_counter_cubit.dart';
import 'package:nafas_app/features/savings_counter/presentation/views/widgets/goals_item.dart';

class AddCigarettesButton extends StatelessWidget {
  const AddCigarettesButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GoalsItem(
      goalsItemModel: GoalsItemModel(
        image: Assets.imagesCigarette,
        title: 'إضافة سجائر لم تُدخن',
        icon: Icons.add,
      ),
      onPressed: () {
        showCustomDialog(
          context,
          dialogTitle: 'أدخل عدد السجائر',
          dialogTextFieldHintText: 'عدد السجائر',
          dialogButtonTitle: 'إضافة',
          snackBarMessage: 'تم اضافة سيجارة',
          isContentNeeded: true,
          onPressedCubitAction:
              context.read<SavingsCounterCubit>().updateCigarettesAmount,
        );
      },
    );
  }
}
