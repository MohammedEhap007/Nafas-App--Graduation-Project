import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';
import 'package:nafas_app/core/widgets/custom_container.dart';

class CustomSettingsContainer extends StatelessWidget {
  const CustomSettingsContainer({
    super.key,
    this.lastWidget,
    required this.icon,
    required this.lable,
    required this.padding,
    this.onTap,
  });
  final Widget? lastWidget;
  final String icon;
  final String lable;
  final EdgeInsetsGeometry padding;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CustomContainer(
        child: Padding(
          padding: padding,
          child: Row(
            children: [
              SvgPicture.asset(icon),
              SizedBox(width: 10),
              Text(
                lable,
                style: TextStyles.medium16(context),
              ),
              Spacer(),
              SizedBox(
                child: lastWidget,
              )
            ],
          ),
        ),
      ),
    );
  }
}
