import 'package:flutter/material.dart';
import 'package:nafas_app/core/utils/app_colors.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';
import 'package:nafas_app/features/setting/presentation/view/widgets/account_data_view_body.dart';

class AccountDataView extends StatelessWidget {
  const AccountDataView({super.key});
  static const routeName = 'accountDataView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'بيانات الحساب',
          style: TextStyles.medium20(context),
        ),
        centerTitle: true,
        backgroundColor: AppColors.primaryBackgroundColor,
        scrolledUnderElevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: const AccountDataViewBody(),
      ),
    );
  }
}
