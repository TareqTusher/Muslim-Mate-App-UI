import 'package:flutter/material.dart';
import 'package:muslim_mate/core/common_components/title.dart';
import 'package:muslim_mate/core/router/app_routes.dart';
import 'package:muslim_mate/core/router/router.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/strings.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> colors = [
      AppColors.blackColor,
      Colors.green,
      Colors.blue,
      AppColors.grey500,
      Colors.red,
      Colors.amber,
      Colors.deepPurple,
      Colors.orange,
    ];

    List<String> title = [
      "1. Idzhar",
      "2. Idgham Bigunnah",
      "3. Idgham Bilagunnah",
      "4. Iqlab",
      "5. Ikhfah Haqiqi",
      "6. Ikfah Syafawi",
      "7. Idgham Mimi",
      "8. Qalqalah",
    ];

    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,

        leading: InkWell(
          focusColor: AppColors.whiteColor,
          highlightColor: AppColors.whiteColor,
          hoverColor: AppColors.whiteColor,
          splashColor: AppColors.whiteColor,
          onTap: () {
            router.push(AppRoutesPath.editProfile);
          },
          child: Icon(
            Icons.chevron_left,
            size: 24,
            color: AppColors.blackColor,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    router.push(AppRoutesPath.qiblaTimePage);
                  },
                  child: Icon(Icons.alarm, size: 24, color: AppColors.grey600),
                ),
                SizedBox(width: 12),
                InkWell(
                  onTap: () {
                    router.push(AppRoutesPath.nearestMosque);
                  },
                  child: Icon(
                    Icons.directions,
                    size: 24,
                    color: AppColors.grey600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Strings.prayerSetting,
                style: TextStyles.fontText14Regular(AppColors.grey600),
              ),
              Text(
                Strings.tajweed,
                style: TextStyles.fontText16Medium(AppColors.blackColor),
              ),
              SizedBox(height: 12),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: title.length,
                itemBuilder: (context, index) {
                  return TitleAndDescription(
                    color: colors[index],
                    text: title[index],
                    subtitle: Strings.loreum,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
