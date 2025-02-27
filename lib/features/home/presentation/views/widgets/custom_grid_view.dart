import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nafas_app/core/utils/app_colors.dart';
import 'package:nafas_app/core/utils/app_images.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';
import 'package:nafas_app/core/widgets/custom_container.dart';
import 'package:nafas_app/features/home/data/models/counter_model.dart';
import 'package:nafas_app/features/savings_counter/presentation/manger/savings_counter_cubit/savings_counter_cubit.dart';

class CustomCounterGridView extends StatelessWidget {
  const CustomCounterGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<CounterModel> counterData = [
      CounterModel(
        image: Assets.imagesMoneyBox,
        count:
            '${context.read<SavingsCounterCubit>().state.totalSavings.toInt()} جنيه',
        title: 'المبلغ المُوفّر',
      ),
      CounterModel(
        image: Assets.imagesCigarette,
        count:
            '${context.read<SavingsCounterCubit>().state.unsmokedCigarettesAmount.toInt()} سيجارة',
        title: 'السجائر المُوفّرة',
      ),
      CounterModel(
        image: Assets.imagesGoal,
        count:
            '${context.read<SavingsCounterCubit>().state.goalAmount.toInt()} جنيه',
        title: 'الهدف المحدد',
      ),
      CounterModel(
        image: Assets.imagesInspection,
        count: '10 هدف',
        title: 'الأهداف المكتمله',
      ),
    ];
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: counterData.length,
      itemBuilder: (context, index) {
        return CustomContainer(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 20,
              bottom: 20,
              right: 18.5,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  counterData[index].image,
                  width: 34,
                  height: 34,
                ),
                SizedBox(
                  height: 5,
                ),
                FittedBox(
                  child: Text(
                    counterData[index].title,
                    style: TextStyles.medium16(context).copyWith(
                      color: AppColors.primaryTextColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  counterData[index].count,
                  style: TextStyles.medium16(context).copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
              ],
            ),
          ),
        );
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        childAspectRatio: MediaQuery.sizeOf(context).aspectRatio * 2.19,
      ),
    );
  }
}
