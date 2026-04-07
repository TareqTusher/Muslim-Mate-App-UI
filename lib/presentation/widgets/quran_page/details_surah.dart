import 'package:flutter/material.dart';
import 'package:muslim_mate/core/router/app_routes.dart';
import 'package:muslim_mate/core/router/router.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';
import 'package:muslim_mate/presentation/widgets/quran_page/al_fatihah_tab_section.dart';
import 'package:muslim_mate/presentation/widgets/quran_page/appbar_title.dart';

class DetailsSurahWidget extends StatelessWidget {
  const DetailsSurahWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        appBar: AppBar(
          backgroundColor: AppColors.whiteColor,
          leading: InkWell(
            hoverColor: AppColors.whiteColor,
            highlightColor: AppColors.whiteColor,
            focusColor: AppColors.whiteColor,
            onTap: () {
              router.push(AppRoutesPath.suraTab);
            },
            child: Icon(Icons.chevron_left, size: 30, color: AppColors.grey400),
          ),
          title: AppbarTitle(),
          bottom: TabBar(
            splashBorderRadius: BorderRadius.circular(12),
            indicatorColor: AppColors.primary600,
            indicatorSize: TabBarIndicatorSize.label,
            dividerColor: AppColors.grey100,
            labelColor: AppColors.primary600,
            labelStyle: TextStyles.fontText16Medium(AppColors.primary400),
            tabs: [
              Tab(text: "2.Al Barakah", height: 30),
              Tab(text: "1.Al Fatihah"),
            ],
          ),
        ),

        body: TabBarView(
          children: [
            Center(child: Text("Tab 1 Content")),
           AlFatihahTabSection(),
          ],
        ),
      ),
    );
  }
}
