import 'package:flutter/material.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/strings.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';
import 'package:muslim_mate/presentation/widgets/prayer_page/data_list.dart';

class PrayerTimeTab extends StatelessWidget {
  const PrayerTimeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Strings.prayerTime,
                  style: TextStyles.fontText14Medium(AppColors.blackColor),
                ),
                SizedBox(height: 12),
                Text(
                  Strings.getAccurate,
                  style: TextStyles.fontText14Regular(AppColors.grey500),
                ),
              ],
            ),
            SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: DataList(),
            ),
          ],
        ),
      ),
    );
  }
}
