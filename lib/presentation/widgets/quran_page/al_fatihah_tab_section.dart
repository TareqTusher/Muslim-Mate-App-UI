import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:muslim_mate/core/common_components/hexagon_clipper.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/strings.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';
import 'package:muslim_mate/presentation/widgets/quran_page/al_fatiah_tab_container_section.dart';

class AlFatihahTabSection extends StatefulWidget {
  const AlFatihahTabSection({super.key});

  @override
  State<AlFatihahTabSection> createState() => _AlFatihahTabSectionState();
}

class _AlFatihahTabSectionState extends State<AlFatihahTabSection> {
  int selectedIndex = 0;
  double value = 0.2; 

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AlFatiahTabContainerSection(),
          SizedBox(height: 12),
          ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Container(
                color: Colors.red,
                child: InkWell(
                  focusColor: AppColors.whiteColor,
                  hoverColor: AppColors.whiteColor,
                  highlightColor: AppColors.whiteColor,
                  splashColor: AppColors.whiteColor,
                  onTap: () {
                    setState(() {
                      selectedIndex = index;                   
                    });

                    showModalBottomSheet(
                      context: context,

                      backgroundColor: Colors.transparent,
                      isScrollControlled: false,
                      builder: (context) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 20,
                          ),
                          child: Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: AppColors.whiteColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "1.Al Fatihah:1",
                                      style: TextStyles.fontText14Medium(
                                        AppColors.blackColor,
                                      ),
                                    ),
                                    Icon(
                                      Icons.cancel_rounded,
                                      size: 24,
                                      color: Colors.red, 
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.skip_previous,
                                      size: 20,
                                      color: AppColors.grey600,
                                    ),

                                    Icon(
                                      Icons.pause,
                                      size: 30,
                                      color: AppColors.primary500,
                                    ),

                                    Icon(
                                      Icons.skip_next,
                                      size: 20,
                                      color: AppColors.grey600,
                                    ),
                                  ],
                                ),

                                ProgressBar(
                                  baseBarColor: AppColors.grey300,
                                  //bufferedBarColor: AppColors.grey300,
                                  progressBarColor: Colors.red,
                                  barHeight: 4,
                                  thumbGlowRadius: 0,
                                  thumbRadius: 6,
                                  thumbColor: Colors.red,
                                  progress: Duration(milliseconds: 1000),
                                  buffered: Duration(milliseconds: 2000),
                                  total: Duration(milliseconds: 5000),
                                  onSeek: (duration) {},
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Container(
                    color: selectedIndex == index
                        ? AppColors.primary50
                        : AppColors.whiteColor,
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
    );
  }
}
