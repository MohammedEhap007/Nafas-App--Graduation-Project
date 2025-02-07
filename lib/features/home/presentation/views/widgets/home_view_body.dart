import 'package:flutter/material.dart';
import 'package:nafas_app/features/home/presentation/views/widgets/custom_grid_view.dart';
import 'package:nafas_app/features/home/presentation/views/widgets/custom_lable_shape.dart';
import 'package:nafas_app/features/home/presentation/views/widgets/did_u_know_section.dart';
import 'package:nafas_app/features/home/presentation/views/widgets/home_view_app_bar.dart';
import 'package:nafas_app/features/home/presentation/views/widgets/tap_to_expand.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeViewAppBar(),
        const SizedBox(height: 27),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomCounterGridView(),
                const SizedBox(height: 30),
                DidUKnowSection(),
                const SizedBox(
                  height: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomLableShape(lable: 'خطة علاجية'),
                    const SizedBox(
                      height: 12,
                    ),
                    TapToExpandWidget()
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
