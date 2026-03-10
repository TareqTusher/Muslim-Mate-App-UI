import 'package:flutter/material.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';

class TopHeaderSection extends StatefulWidget {
  const TopHeaderSection({super.key});

  @override
  State<TopHeaderSection> createState() => _TopHeaderSectionState();
}

class _TopHeaderSectionState extends State<TopHeaderSection> {
  TimeOfDay? selectedTime;

  Future<void> pickTime() async {
    TimeOfDay? time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (time != null) {
      setState(() {
        selectedTime = time;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      color: AppColors.primary600,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// TIME + DATE
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      selectedTime != null
                          ? "${selectedTime!.hour}:${selectedTime!.minute}"
                          : "14:01",
                      style: TextStyles.fontText24Medium(AppColors.whiteColor),
                    ),

                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            pickTime();
                          },
                          child: Icon(
                            Icons.alarm,
                            size: 16,
                            color: AppColors.whiteColor,
                          ),
                        ),

                        const SizedBox(width: 4),

                        Text(
                          "Ashr in ",
                          style: TextStyles.fontText14Regular(
                            AppColors.whiteColor,
                          ),
                        ),

                        Text(
                          "01:08:59",
                          style: TextStyles.fontText14Regular(
                            AppColors.whiteColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                Column(
                  children: [
                    Text(
                      "10 Ramadhan 1446H",
                      style: TextStyles.fontText14Medium(AppColors.whiteColor),
                    ),

                    const SizedBox(height: 6),

                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 40,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white.withValues(alpha: .2),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_pin,
                                size: 12,
                                color: AppColors.whiteColor,
                              ),

                              const SizedBox(width: 6),

                              Expanded(
                                child: Text(
                                  "Sumedang, West Java",
                                  style: TextStyles.fontText16Regular(
                                    AppColors.whiteColor,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),

                              Icon(
                                Icons.arrow_right,
                                color: AppColors.whiteColor,
                                size: 14,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                prayerItem("Subuh", "04:37"),
                prayerItem("Fajr", "05:50"),

                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: .2),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: prayerItem("Dzuhur", "12:05"),
                ),

                prayerItem("Ashr", "15:10"),
                prayerItem("Maghrib", "18:13"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget prayerItem(String name, String time) {
    return Column(
      children: [
        Text(name, style: const TextStyle(color: Colors.white, fontSize: 12)),
        const Icon(Icons.wb_sunny, color: Colors.white, size: 18),

        const SizedBox(height: 4),

        Text(time, style: const TextStyle(color: Colors.white, fontSize: 12)),
      ],
    );
  }
}
