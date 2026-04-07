import 'package:flutter/material.dart';
import 'package:muslim_mate/core/common_components/hexagon_clipper.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/strings.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';
import 'package:muslim_mate/presentation/widgets/quran_page/al_fatiah_tab_container_section.dart';

class AlFatihahTabSection extends StatelessWidget {
  const AlFatihahTabSection({super.key});

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
              return Padding(
                padding: const EdgeInsets.all(16.0),
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
