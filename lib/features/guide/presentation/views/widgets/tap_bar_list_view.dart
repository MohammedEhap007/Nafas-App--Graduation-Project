import 'package:flutter/material.dart';
import 'package:nafas_app/core/utils/app_colors.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';

class TapBarListView extends StatefulWidget {
  const TapBarListView({
    super.key,
  });

  @override
  State<TapBarListView> createState() => _TapBarListViewState();
}

class _TapBarListViewState extends State<TapBarListView> {
  final List<String> tabName = [
    'عن التدخين',
    'أضرار التدخين',
    'فوائد الإقلاع',
    'ازاي تبطل تدخين',
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.1,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return FittedBox(
            fit: BoxFit.scaleDown,
            child: InkWell(
              borderRadius: BorderRadius.circular(12),
              onTap: () {
                setState(
                  () {
                    selectedIndex = index;
                  },
                );
              },
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: selectedIndex == index ? AppColors.primaryColor : null,
                ),
                child: Text(
                  tabName[index],
                  style: TextStyles.medium16(context).copyWith(
                    color: selectedIndex == index ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
