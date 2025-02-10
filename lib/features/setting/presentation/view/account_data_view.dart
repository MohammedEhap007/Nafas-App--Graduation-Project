import 'package:flutter/material.dart';
import 'package:nafas_app/features/setting/presentation/view/widgets/account_data_view_body.dart';

class AccountDataView extends StatelessWidget {
  const AccountDataView({super.key});
  static const routeName = 'accountDataView';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: const AccountDataViewBody(),
        ),
      ),
    );
  }
}
