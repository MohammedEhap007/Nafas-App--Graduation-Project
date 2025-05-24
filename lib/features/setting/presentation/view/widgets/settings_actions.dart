import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nafas_app/constant.dart';
import 'package:nafas_app/core/helper/show_custom_snack_bar.dart';
import 'package:nafas_app/core/services/shared_preferences_singleton.dart';
import 'package:nafas_app/core/utils/app_colors.dart';
import 'package:nafas_app/core/utils/app_custom_icons.dart';
import 'package:nafas_app/core/widgets/custom_button.dart';
import 'package:nafas_app/features/auth/presentation/views/log_in_view.dart';
import 'package:nafas_app/features/setting/presentation/view/account_data_view.dart';
import 'package:nafas_app/features/setting/presentation/view/privacy_view.dart';
import 'package:nafas_app/features/setting/presentation/view/rules_view.dart';
import 'package:nafas_app/features/setting/presentation/view/widgets/custom_alert.dart';
import 'package:nafas_app/features/setting/presentation/view/widgets/custom_settings_container.dart';
import 'package:nafas_app/features/setting/presentation/view/widgets/custom_settings_tap_to_expand.dart';
// import 'package:nafas_app/features/setting/presentation/view/widgets/custom_switcher.dart';

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
                onTap: () {
                  Navigator.pushNamed(context, AccountDataView.routeName);
                },
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
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return CustomAlert(
                        title: 'هل حقا تريد حذف الحساب ؟',
                        content:
                            'فور تأكيدك حذف الحساب , سيتم حذف الحساب نهائيا ولا يمكن إيقاف عملية الحذف بمجرد التأكيد.',
                        button1: CustomButton(
                          onPressed: () {
                            FirebaseFirestore.instance
                                .collection('users')
                                .doc(FirebaseAuth.instance.currentUser!.uid)
                                .delete();
                            FirebaseAuth.instance.currentUser!.delete();
                            Prefs.remove(kUserData);
                            Navigator.pushNamedAndRemoveUntil(
                                context, LogInView.routeName, (route) => false);
                            showCustomSnackBar(context,
                                message: 'تم حذف الحساب بنجاح',
                                isSucceeded: true);
                          },
                          text: 'حذف',
                          backgroundColor:
                              AppColors.importantButtonsBackgroundColor,
                        ),
                        button2: CustomButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          text: 'إلغاء',
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
        // CustomSettingsContainer(
        //   padding: const EdgeInsets.symmetric(
        //     horizontal: 16,
        //     vertical: 17,
        //   ),
        //   icon: AppCustomIcons.nightMoodIcon,
        //   lable: 'الوضع الليلي',
        //   lastWidget: CustomSwitcher(),
        // ),
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
                onTap: () {
                  Navigator.pushNamed(context, RulesView.routeName);
                },
              ),
              CustomSettingsContainer(
                padding: EdgeInsets.zero,
                icon: AppCustomIcons.privacyIcon,
                lable: 'سياسية الخصوصية',
                onTap: () {
                  Navigator.pushNamed(context, PrivacyView.routeName);
                },
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
          onTap: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return CustomAlert(
                  title: 'تأكيد تسجيل الخروج',
                  content: 'هل تريد تسجيل الخروج!\nنحن بإنتظار عودتك',
                  button1: CustomButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    text: 'إلغاء',
                  ),
                  button2: CustomButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, LogInView.routeName, (route) => false);
                      FirebaseAuth.instance.signOut();
                      Prefs.remove(kUserData);
                      showCustomSnackBar(
                        context,
                        message: 'تم تسجيل الخروج بنجاح',
                        isSucceeded: true,
                      );
                    },
                    text: 'تأكيد',
                    backgroundColor: AppColors.importantButtonsBackgroundColor,
                  ),
                );
              },
            );
          },
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
