import 'package:flutter/material.dart';

import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';
import 'package:muslim_mate/presentation/widgets/quran_page/pray_edit_delete_bottom_sheet.dart';
import 'package:muslim_mate/presentation/widgets/quran_page/surah_title.dart';

class SurahFlowTab extends StatefulWidget {
  const SurahFlowTab({super.key});

  @override
  State<SurahFlowTab> createState() => _SurahFlowTabState();
}

class _SurahFlowTabState extends State<SurahFlowTab> {
  bool isPrayExpanded = false;
  bool isMuamalahExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  isPrayExpanded = !isPrayExpanded;
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: SurahTitle(
                  title: "Pray",
                  icons: isPrayExpanded ? Icons.expand_more : Icons.expand_less,
                ),
              ),
            ),

            isPrayExpanded
                ? ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return InkWell(
                        focusColor: AppColors.whiteColor,
                        hoverColor: AppColors.whiteColor,
                        highlightColor: AppColors.whiteColor,
                        onTap: () {
                          ///eita use korle 4side theke padding show kore na

                          // showModalBottomSheet(
                          //   backgroundColor: Colors.transparent,
                          //   context: context,
                          //   isScrollControlled: true,
                          //   builder: (context) {
                          //     return Padding(
                          //       padding: const EdgeInsets.symmetric(
                          //        horizontal:  16,
                          //        vertical:  20,

                          //       ),
                          //       child: Container(
                          //         decoration: BoxDecoration(
                          //           borderRadius: BorderRadius.circular(20),
                          //         ),
                          //         padding: EdgeInsets.all(12),
                          //         height: 150,
                          //         width: double.infinity,
                          //         child: Column(
                          //           mainAxisSize: MainAxisSize.min,
                          //           children: [Text("data")],
                          //         ),
                          //       ),
                          //     );
                          //   },
                          // );

   PrayEditDeleteBottomSheet.show(context);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 4,
                                  backgroundColor: AppColors.grey500,
                                ),
                                SizedBox(width: 12),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Al Isra:78",
                                      style: TextStyles.fontText14Regular(
                                        AppColors.grey600,
                                      ),
                                    ),
                                    Text(
                                      "Juz 15 | Surah17",
                                      style: TextStyles.fontText12Regular(
                                        AppColors.grey400,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Icon(
                              Icons.bookmark,
                              size: 24,
                              color: AppColors.primary400,
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (_, _) {
                      return Divider();
                    },
                    itemCount: 3,
                  )
                : SizedBox(height: 10),

            SizedBox(height: 12),

            InkWell(
              onTap: () {
                setState(() {});
                isMuamalahExpanded = !isMuamalahExpanded;
              },
              child: SurahTitle(
                title: "Mumallah",
                icons: isMuamalahExpanded
                    ? Icons.expand_more
                    : Icons.expand_less,
              ),
            ),

            isMuamalahExpanded
                ? ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 4,
                                backgroundColor: AppColors.grey500,
                              ),
                              SizedBox(width: 12),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Al Isra:78",
                                    style: TextStyles.fontText14Regular(
                                      AppColors.grey600,
                                    ),
                                  ),
                                  Text(
                                    "Juz 15 | Surah17",
                                    style: TextStyles.fontText12Regular(
                                      AppColors.grey400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Icon(
                            Icons.bookmark,
                            size: 24,
                            color: AppColors.primary400,
                          ),
                        ],
                      );
                    },
                    separatorBuilder: (_, _) {
                      return Divider();
                    },
                    itemCount: 3,
                  )
                : SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
