import 'package:flutter/material.dart';
import 'package:nafas_app/core/utils/app_colors.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';

class TapToExpandWidget extends StatefulWidget {
  const TapToExpandWidget({super.key});

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
        duration: Duration(seconds: 1),
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
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'الأسبوع الأول – الاستعداد للإقلاع',
                      style: TextStyles.medium16(context).copyWith(
                        color: AppColors.primaryColor,
                      ),
                    ),
                    InkWell(
                      child: RotatedBox(
                        quarterTurns: 2,
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.grey,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
                _isExpanded ? Text('data') : SizedBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
