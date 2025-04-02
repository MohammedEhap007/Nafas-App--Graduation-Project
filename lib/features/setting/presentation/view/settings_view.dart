import 'package:flutter/material.dart';
import 'package:nafas_app/features/setting/presentation/view/widgets/settings_view_body.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: const SettingsViewBody(),
      ),
    );
  }
}
