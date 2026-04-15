import 'package:flutter/material.dart';
import 'package:muslim_mate/core/common_components/custom_elevated_button.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/strings.dart';

class PrayerActivityButton extends StatefulWidget {
  const PrayerActivityButton({super.key});

  @override
  State<PrayerActivityButton> createState() => _PrayerActivityButtonState();
}

class _PrayerActivityButtonState extends State<PrayerActivityButton> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomElevatedButton(
            text: Strings.prayerTime,
            color: selectedIndex == 0
                ? AppColors.whiteColor
                : AppColors.primary600,

            onTap: () {
              setState(() {
                selectedIndex = 0;
              });
            },
            backgroundClr: selectedIndex == 0
                ? AppColors.primary600
                : AppColors.whiteColor,
            icons: Icons.alarm,
          ),
        ),
        SizedBox(width: 16),
        Expanded(
          child: CustomElevatedButton(
            text: Strings.dailyActivity,
            color: selectedIndex == 1
                ? AppColors.whiteColor
                : AppColors.primary600,
            onTap: () {
              setState(() {
                selectedIndex = 1;
              });
            },
            backgroundClr: selectedIndex == 1
                ? AppColors.primary600
                : AppColors.whiteColor,
            icons: Icons.menu_book,
          ),
        ),
      ],
    );
  }
}
