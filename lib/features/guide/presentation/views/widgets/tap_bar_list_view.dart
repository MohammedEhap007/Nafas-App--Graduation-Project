import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nafas_app/core/utils/app_colors.dart';
import 'package:nafas_app/core/utils/app_text_styles.dart';
import 'package:nafas_app/features/guide/presentation/manger/blogs_cubit/blogs_cubit.dart';
import 'package:nafas_app/features/guide/presentation/manger/videos_cubit/videos_cubit.dart';

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
    'قصص'
  ];

  final List<String> categories = [
    'About',
    'Damage',
    'BenefitsOfQuitting',
    'HowToQuitSmoking',
    'Stories',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.1,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: tabName.length,
        itemBuilder: (context, index) {
          return FittedBox(
            fit: BoxFit.scaleDown,
            child: InkWell(
              borderRadius: BorderRadius.circular(12),
              onTap: () {
                setState(
                  () {
                    context.read<VideosCubit>().selectedIndex = index;
                    context.read<VideosCubit>().category = tabName[index];
                    context.read<VideosCubit>().fetchVideos(
                          category: categories[index],
                        );
                    context.read<BlogsCubit>().fetchBlogs(
                          category: categories[index],
                        );
                  },
                );
              },
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: context.read<VideosCubit>().selectedIndex == index
                      ? AppColors.primaryColor
                      : null,
                ),
                child: Text(
                  tabName[index],
                  style: TextStyles.medium16(context).copyWith(
                    color: context.read<VideosCubit>().selectedIndex == index
                        ? Colors.white
                        : Colors.black,
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
