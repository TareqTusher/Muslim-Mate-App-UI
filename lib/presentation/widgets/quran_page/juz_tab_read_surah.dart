import 'package:flutter/material.dart';
import 'package:muslim_mate/core/common_components/hexagon_clipper.dart';
import 'package:muslim_mate/core/router/app_routes.dart';
import 'package:muslim_mate/core/router/router.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/strings.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';
import 'package:muslim_mate/presentation/widgets/quran_page/appbar_title.dart';
import 'package:muslim_mate/presentation/widgets/quran_page/go_to_modal_bottom_sheet.dart';

class JuzTabReadSurah extends StatelessWidget {
  const JuzTabReadSurah({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        appBar: AppBar(
          backgroundColor: AppColors.whiteColor,
          leading: InkWell(
         
            hoverColor: AppColors.whiteColor,
            highlightColor: AppColors.whiteColor,
            focusColor: AppColors.whiteColor,
            onTap: () {
              router.push(AppRoutesPath.quranPage);
            },
            child: Icon(Icons.chevron_left, size: 30, color: AppColors.grey400),
          ),
          title: AppbarTitle(
            backGroundColor: AppColors.grey100,
            iconColor: AppColors.grey400,
            onTap: () => GoTo.goToModalBottomSheet(context),
          ),
          bottom: TabBar(
            splashBorderRadius: BorderRadius.circular(12),
            indicatorColor: AppColors.primary600,
            indicatorSize: TabBarIndicatorSize.label,
            dividerColor: AppColors.grey100,
            labelColor: AppColors.primary600,
            labelStyle: TextStyles.fontText16Medium(AppColors.primary400),
            tabs: [
              Tab(text: "juz3", height: 30),
              Tab(text: "juz2", height: 30),
              Tab(text: "juz1", height: 30),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              children: [
                ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return InkWell(
                      focusColor: AppColors.whiteColor,
                      hoverColor: AppColors.whiteColor,
                      highlightColor: AppColors.whiteColor,
                      splashColor: AppColors.whiteColor,
                      onTap: () {
                  
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ClipPath(
                                  clipper: HexagonClipper(),
                                  child: Container(
                                    width: 30,
                                    height: 34,

                                    decoration: BoxDecoration(
                                      color: AppColors.whiteColor,
                                      border: Border.all(
                                        color: AppColors.primary700,
                                        width: 2,
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "${index + 1}",
                                        style: TextStyles.fontText14Medium(
                                          AppColors.primary600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  Strings.alhamdulillah,
                                  style: TextStyles.fontText16Regular(
                                    AppColors.blackColor,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 12),
                            Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Wrap(
                                children: [
                                  Text(
                                    "Alhamdulillahi rabbil-alamin",
                                    style: TextStyles.fontText14Regular(
                                      AppColors.blackColor,
                                    ).copyWith(fontStyle: FontStyle.italic),
                                  ),
                                  Text(
                                    "All praise is for Allah-Lord of all worlds",
                                    maxLines: 2,
                                    style: TextStyles.fontText14Regular(
                                      AppColors.blackColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (_, _) {
                    return Divider();
                  },
                  itemCount: 5,
                ),
              ],
            ),
            Center(child: Text("juz2")),

            Center(child: Text("juz3")),
          ],
        ),
      ),
    );
  }
}
