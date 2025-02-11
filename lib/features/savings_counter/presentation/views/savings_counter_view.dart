import 'package:flutter/material.dart';
import 'package:nafas_app/features/savings_counter/presentation/views/widgets/savings_counter_view_body.dart';

class SavingsCounterView extends StatelessWidget {
  const SavingsCounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SavingsCounterViewBody()),
    );
  }
}
