import 'package:flutter/material.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';

class CustomLableShape extends StatelessWidget {
  const CustomLableShape({super.key, required this.lable});
  final String lable;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding:
              const EdgeInsets.only(top: 8, left: 21, right: 21, bottom: 9),
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Color(0xFF08C0D8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
          ),
          child: Text(lable,
              style: TextStyles.bold16(context).copyWith(color: Colors.white)),
        ),
      ],
    );
  }
}
