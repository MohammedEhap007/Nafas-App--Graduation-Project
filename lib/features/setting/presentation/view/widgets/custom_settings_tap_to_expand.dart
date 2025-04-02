import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nafas_app/core/utils/app_colors.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';

class CustomSettingsTapToExpand extends StatefulWidget {
  const CustomSettingsTapToExpand(
      {super.key,
      required this.icon,
      required this.lable,
      required this.expandItem});
  final String icon;
  final String lable;
  final Widget expandItem;
  @override
  State<CustomSettingsTapToExpand> createState() =>
      _CustomSettingsTapToExpandState();
}

class _CustomSettingsTapToExpandState extends State<CustomSettingsTapToExpand> {
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 17,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    _isExpanded = !_isExpanded;
                  });
                },
                child: Row(
                  children: [
                    SvgPicture.asset(widget.icon),
                    SizedBox(width: 10),
                    Text(
                      widget.lable,
                      style: TextStyles.medium16(context),
                    ),
                    Spacer(),
                    AnimatedRotation(
                      duration: Duration(milliseconds: 500),
                      turns: _isExpanded ? 0.25 : 0.5,
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: _isExpanded
                            ? AppColors.primaryColor
                            : AppColors.secondaryTextColor,
                      ),
                    ),
                  ],
                ),
              ),
              _isExpanded ? widget.expandItem : SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
