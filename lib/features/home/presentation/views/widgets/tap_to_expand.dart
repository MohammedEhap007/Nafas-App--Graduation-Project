import 'package:flutter/material.dart';
import 'package:nafas_app/core/utils/app_colors.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';
import 'package:nafas_app/features/home/presentation/views/widgets/treatment_plan_items.dart';

class TapToExpandWidget extends StatefulWidget {
  const TapToExpandWidget(
      {super.key, required this.text, required this.currentIndex});

  final String text;
  final int currentIndex;

  @override
  TapToExpandWidgetState createState() => TapToExpandWidgetState();
}

class TapToExpandWidgetState extends State<TapToExpandWidget> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isExpanded = !_isExpanded;
        });
      },
      child: AnimatedSize(
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
              vertical: 22,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.text,
                      style: TextStyles.medium16(context).copyWith(
                        color: AppColors.primaryColor,
                      ),
                    ),
                    InkWell(
                      child: AnimatedRotation(
                        duration: Duration(milliseconds: 500),
                        turns: _isExpanded ? 0.25 : 0.5,
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: _isExpanded
                              ? AppColors.primaryColor
                              : AppColors.secondaryTextColor,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
                _isExpanded
                    ? TreatmentPlanItems(
                        currentIndex: widget.currentIndex,
                      )
                    : SizedBox.shrink(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
