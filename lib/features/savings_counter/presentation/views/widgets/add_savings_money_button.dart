import 'package:flutter/material.dart';
import 'package:nafas_app/core/utils/app_images.dart';
import 'package:nafas_app/features/savings_counter/data/models/goals_item_model.dart';
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
      onPressed: () {},
    );
  }
}
