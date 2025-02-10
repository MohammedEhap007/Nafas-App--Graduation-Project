import 'package:flutter/material.dart';
import 'package:nafas_app/core/utils/app_custom_icons.dart';
import 'package:nafas_app/features/setting/presentation/view/widgets/custom_settings_container.dart';
import 'package:nafas_app/features/setting/presentation/view/widgets/custom_settings_tap_to_expand.dart';
import 'package:nafas_app/features/setting/presentation/view/widgets/custom_switcher.dart';

class SettingsActions extends StatelessWidget {
  const SettingsActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        CustomSettingsTapToExpand(
          lable: 'حسابي',
          icon: AppCustomIcons.myAccountIcon,
          expandItem: Column(
            spacing: 30,
            children: [
              SizedBox(),
              CustomSettingsContainer(
                padding: EdgeInsets.zero,
                icon: AppCustomIcons.accountDataIcon,
                lable: 'بيانات الحساب',
              ),
              CustomSettingsContainer(
                padding: EdgeInsets.zero,
                icon: AppCustomIcons.changePasswordIcon,
                lable: 'تغير كلمة المرور ',
              ),
              CustomSettingsContainer(
                padding: EdgeInsets.zero,
                icon: AppCustomIcons.deleteAccountIcon,
                lable: 'حذف الحساب ',
              ),
            ],
          ),
        ),
        CustomSettingsContainer(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 17,
          ),
          icon: AppCustomIcons.nightMoodIcon,
          lable: 'الوضع الليلي',
          lastWidget: CustomSwitcher(),
        ),
        CustomSettingsTapToExpand(
          icon: AppCustomIcons.usageDataIcon,
          lable: 'بيانات الإستخدام',
          expandItem: Column(
            spacing: 30,
            children: [
              SizedBox(),
              CustomSettingsContainer(
                padding: EdgeInsets.zero,
                icon: AppCustomIcons.rulesIcon,
                lable: 'الشروط والأحكام ',
              ),
              CustomSettingsContainer(
                padding: EdgeInsets.zero,
                icon: AppCustomIcons.privacyIcon,
                lable: 'سياسية الخصوصية',
              ),
            ],
          ),
        ),
        CustomSettingsContainer(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 17,
          ),
          icon: AppCustomIcons.logOutIcon,
          lable: 'تسجيل الخروج',
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
