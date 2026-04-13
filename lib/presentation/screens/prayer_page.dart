import 'package:flutter/material.dart';
import 'package:muslim_mate/core/common_components/custom_elevated_button.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/strings.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';
import 'package:table_calendar/table_calendar.dart';

class PrayerPage extends StatefulWidget {
  const PrayerPage({super.key});

  @override
  State<PrayerPage> createState() => _PrayerPageState();
}

class _PrayerPageState extends State<PrayerPage> {
  DateTime focusedDay = DateTime.now();
  DateTime? selectedDay;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsetsGeometry.all(12),
            child: Column(
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
                TableCalendar(
                  //locale: 'ar',
                  headerStyle: const HeaderStyle(formatButtonVisible: false),
                  firstDay: DateTime.utc(1998, 1, 1),
                  lastDay: DateTime.utc(2026, 12, 31),
                  focusedDay: focusedDay,
                  selectedDayPredicate: (day) => isSameDay(selectedDay, day),
                  onDaySelected: (selected, focused) {
                    setState(() {
                      selectedDay = selected;
                      focusedDay = focused;
                    });
                  },
                  calendarStyle: CalendarStyle(),
                ),

                SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: CustomElevatedButton(
                        text: Strings.prayerTime,
                        color: AppColors.whiteColor,
                        onTap: () {},
                        backgroundClr: AppColors.primary600,
                        icons: Icons.alarm,
                        
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: CustomElevatedButton(
                        text: Strings.dailyActivity,
                        onTap: () {},
                        backgroundClr: AppColors.primary600,
                        icons: Icons.alarm,
                        color: AppColors.blackColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
