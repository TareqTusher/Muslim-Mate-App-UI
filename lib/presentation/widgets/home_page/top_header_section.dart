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
  

  return SizedBox(
    height: 300,
    width: double.infinity,
    child: Stack(
      children: [

        Positioned.fill(
          child: Image.asset(
            "assets/images/ramadan4.png",
            fit: BoxFit.fill,
          ),
        ),

        Positioned.fill(
          child: Container(
            color: AppColors.primary600.withValues(alpha:  .85),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

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
                        style: TextStyles.fontText24Medium(
                            AppColors.whiteColor),
                      ),

                      Row(
                        children: [
                          InkWell(
                            onTap: pickTime,
                            child: const Icon(
                              Icons.alarm,
                              size: 16,
                              color: Colors.white,
                            ),
                          ),

                          const SizedBox(width: 4),

                          Text(
                            "Ashr in ",
                            style: TextStyles.fontText14Regular(
                                AppColors.whiteColor),
                          ),

                          Text(
                            "01:08:59",
                            style: TextStyles.fontText14Regular(
                                AppColors.whiteColor),
                          ),
                        ],
                      ),
                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "10 Ramadhan 1446H",
                        style: TextStyles.fontText14Medium(
                            AppColors.whiteColor),
                      ),

                      const SizedBox(height: 6),

                      Container(
                        height: 36,
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white.withValues (alpha: .2),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(Icons.location_pin,
                                size: 14, color: Colors.white),

                            SizedBox(width: 6),

                            Text(
                              "Sumedang, West Java",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                              ),
                            ),

                            SizedBox(width: 6),

                            Icon(Icons.chevron_right,
                                size: 16, color: Colors.white),
                          ],
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
                      horizontal: 14,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withAlpha(1 ),
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
      ],
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
