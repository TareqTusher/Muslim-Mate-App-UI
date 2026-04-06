import 'package:flutter/material.dart';
import 'package:muslim_mate/core/common_components/hexagon_clipper.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';

class SurahTab extends StatelessWidget {
  const SurahTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 7,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: InkWell(
hoverColor: AppColors.whiteColor,
focusColor: AppColors.whiteColor,
highlightColor: AppColors.whiteColor,
splashColor: AppColors.whiteColor,
            onTap: () {},
            child: Row(
              children: [
                ClipPath(
                  clipper: HexagonClipper(),
                  child: Container(
                    width: 30,
                    height: 34,
                    color: AppColors.primary600,
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
            
                const SizedBox(width: 10),
            
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Surah Name",
                      style: TextStyles.fontText14Bold(
                        AppColors.blackColor,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Text(
                          "Makki",
                          style: TextStyles.fontText12Regular(
                            AppColors.blackColor,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Text(
                          "286 Ayah",
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
          ),
        );
      },
      separatorBuilder: (_, __) => const Divider(),
    );
  }
}