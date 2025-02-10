import 'package:flutter/material.dart';

import 'package:nafas_app/features/setting/presentation/view/widgets/rule_view_body.dart';

class RulesView extends StatelessWidget {
  const RulesView({super.key});
  static const routeName = 'rulesView';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: const RuleViewBody(),
      )),
    );
  }
}
