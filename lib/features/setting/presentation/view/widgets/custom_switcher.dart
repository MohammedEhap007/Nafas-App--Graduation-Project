import 'package:flutter/material.dart';
import 'package:nafas_app/core/utils/app_colors.dart';

class CustomSwitcher extends StatefulWidget {
  const CustomSwitcher({
    super.key,
  });

  @override
  State<CustomSwitcher> createState() => _CustomSwitcherState();
}

class _CustomSwitcherState extends State<CustomSwitcher> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: light,
      activeTrackColor: Colors.white,
      inactiveTrackColor: Colors.white,
      activeColor: AppColors.primaryColor,
      inactiveThumbColor: Colors.grey,
      trackOutlineColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.primaryColor;
        }
        return Colors.grey;
      }),
      onChanged: (bool value) {
        setState(() {
          light = value;
        });
      },
    );
  }
}
