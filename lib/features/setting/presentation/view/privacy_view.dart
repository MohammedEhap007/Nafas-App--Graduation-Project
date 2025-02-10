import 'package:flutter/material.dart';
import 'package:nafas_app/features/setting/presentation/view/widgets/privacy_view_body.dart';

class PrivacyView extends StatelessWidget {
  const PrivacyView({super.key});
  static const routeName = 'privacyView';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: const PrivacyViewBody(),
      )),
    );
  }
}
