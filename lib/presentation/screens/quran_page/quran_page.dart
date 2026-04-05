import 'package:flutter/material.dart';
import 'package:muslim_mate/core/common_components/common_header_section.dart';
import 'package:muslim_mate/core/common_components/hexagon_clipper.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/strings.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';
import 'package:muslim_mate/presentation/widgets/quran_page/TopTabSelector.dart';

class QuranPage extends StatefulWidget {
  const QuranPage({super.key});

  @override
  State<QuranPage> createState() => _QuranPageState();
}

class _QuranPageState extends State<QuranPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Strings.alQuran,
                style: TextStyles.fontText20SemiBold(AppColors.blackColor),
              ),
              SizedBox(height: 8),
              CommonHeaderContainerSection(onTap: () {}),
              SizedBox(height: 12),
              ToptabselectorWidget(),
              SizedBox(height: 18),
              ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      children: [
                        ClipPath(
                          clipper: HexagonClipper(),
                          child: Container(
                            width: 24,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: AppColors.primary600,
                            ),
                            child: Center(
                              child: Text(
                                "${index + 1}",
                                style: TextStyles.fontText14Medium(
                                  AppColors.whiteColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Title Here...",
                              style: TextStyles.fontText14Bold(
                                AppColors.blackColor,
                              ),
                            ),
                    
                            Row(
                              children: [
                                Text(
                                  "Description Here....",
                                  style: TextStyles.fontText12Regular(
                                    AppColors.blackColor,
                                  ),
                                ),
                                SizedBox(width: 12),
                                Text(
                                  "286Ayah",
                                  style: TextStyles.fontText12Regular(
                                    AppColors.blackColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Divider();
                },
                itemCount: 7,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
