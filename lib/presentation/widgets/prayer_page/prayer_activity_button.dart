import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:muslim_mate/core/common_components/custom_elevated_button.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/strings.dart';
import 'package:muslim_mate/presentation/screens/prayer_page/activity_tab.dart';
import 'package:muslim_mate/presentation/screens/prayer_page/prayer_time_tab.dart';

class PrayerActivityButton extends StatefulWidget {
  const PrayerActivityButton({super.key});

  @override
  State<PrayerActivityButton> createState() => _PrayerActivityButtonState();
}

class _PrayerActivityButtonState extends State<PrayerActivityButton> {
  int selectedIndex = 0;

  final List<Widget> pages = [PrayerTimeTab(), ActivityTab()];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: CustomElevatedButton(
                  text: Strings.prayerTime,
                  icons: FontAwesomeIcons.alarmClock,
                  iconColor:  selectedIndex == 0
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
                  color: selectedIndex == 0
                      ? AppColors.whiteColor
                      : AppColors.primary600,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: CustomElevatedButton(
                  text: Strings.dailyActivity,
                  icons: FontAwesomeIcons.alignJustify,
                  iconColor:  selectedIndex == 1
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
                  color: selectedIndex == 1
                      ? AppColors.whiteColor
                      : AppColors.primary600,
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),

          SizedBox(
            height: 400, 
            child: IndexedStack(index: selectedIndex, children: pages),
          ),
        ],
      ),
    );
  }
}
