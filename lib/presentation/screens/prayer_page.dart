import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/strings.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';
import 'package:muslim_mate/presentation/widgets/prayer_page/prayer_activity_button.dart';
import 'package:muslim_mate/presentation/widgets/prayer_page/table_calender.dart';

class PrayerPage extends StatelessWidget {
  const PrayerPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> title = [
      "Imsak",
      "Subuh",
      "Fajr",
      "Dzuhr",
      "Ashr",
      "Maghrib",
      "Isya",
    ];
    List<IconData> icons = [
      Icons.notifications_none,
      Icons.cloud_outlined,
      Icons.cloud_queue,
      Icons.wb_sunny_outlined,
      Icons.wb_twilight,
      Icons.wb_cloudy_outlined,
      Icons.nightlight_round,
    ];

    String formatdDate = DateFormat("hh:mm aa ").format(DateTime.now());
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsetsGeometry.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      Strings.prayerTime,
                      style: TextStyles.fontText14Bold(AppColors.blackColor),
                    ),
                    InkWell(
                      borderRadius: BorderRadius.circular(30),
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.primary100,

                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 4.0,
                            vertical: 4,
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_history,
                                size: 14,
                                color: AppColors.primary700,
                              ),
                              SizedBox(width: 8),
                              Text(
                                "Country,City",
                                style: TextStyles.fontText12Bold(
                                  AppColors.primary700,
                                ),
                              ),
                              Icon(
                                Icons.chevron_right,
                                size: 16,
                                color: AppColors.primary700,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                TableCalenderSection(),

                SizedBox(height: 12),
                PrayerActivityButton(),
                SizedBox(height: 12),
                Text(
                  Strings.prayerTime,
                  style: TextStyles.fontText14Medium(AppColors.blackColor),
                ),
                SizedBox(height: 12),
                Text(
                  Strings.getAccurate,
                  style: TextStyles.fontText14Regular(AppColors.grey500),
                ),
                SizedBox(height: 12),
                ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Wrap(
                          children: [
                            Icon(icons[index]),
                            SizedBox(width: 8),

                            Text(
                              title[index],
                              style: TextStyles.fontText14Medium(
                                AppColors.blackColor,
                              ),
                            ),
                          ],
                        ),
                        Wrap(
                          children: [
                            Text(
                              formatdDate,
                              style: TextStyles.fontText12Regular(
                                AppColors.grey600,
                              ),
                            ),
                            SizedBox(width: 8),
                            Icon(
                              Icons.volume_up,
                              color: AppColors.primary500,
                              size: 20,
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (_, _) {
                    return Divider();
                  },
                  itemCount: title.length,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
