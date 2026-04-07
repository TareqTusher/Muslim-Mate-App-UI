import 'package:flutter/material.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';

class LastReadTab extends StatelessWidget {
  const LastReadTab({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> titleText = [
      "Al Barakah:120",
      "Al Barakah:100",
      "Al Barakah:160",
    ];
    List<String> date = [
      "Sun,9 March 2025",
      "Wed,25 April 2025",
      "Sat,10 June 2025",
    ];
    List<String> time = ["9:52", "8:00", "5:35"];
    return ListView.separated(
      itemBuilder: (context, index) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    backgroundColor: AppColors.grey500,
                    radius: 2,
                  ),
                ),
                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      titleText[index],
                      style: TextStyles.fontText14Regular(AppColors.grey700),
                    ),

                    Text(
                      "juz 1   Surah 2",
                      style: TextStyles.fontText12Regular(AppColors.grey500),
                    ),
                  ],
                ),
              ],
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  date[index],
                  style: TextStyles.fontText14Regular(AppColors.grey500),
                ),

                Text(
                  time[index],
                  style: TextStyles.fontText12Regular(AppColors.grey500),
                ),
              ],
            ),
          ],
        );
      },
      separatorBuilder: (_, __) {
        return Divider();
      },
      itemCount: titleText.length,
    );
  }
}
