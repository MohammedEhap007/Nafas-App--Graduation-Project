import 'package:flutter/material.dart';
import 'package:nafas_app/features/guide/presentation/views/widgets/guide_view_body.dart';

class GuideView extends StatelessWidget {
  const GuideView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: GuideViewBody(),
        ),
      ),
    );
  }
}
