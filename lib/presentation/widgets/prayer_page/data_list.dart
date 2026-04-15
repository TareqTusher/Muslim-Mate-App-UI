import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';

class DataList extends StatefulWidget {
  const DataList({super.key});

  @override
  State<DataList> createState() => _DataListState();
}

class _DataListState extends State<DataList> {
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
  int selectedIndex = 0;
  String formatdDate = DateFormat("hh:mm aa ").format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
       physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return InkWell(
          focusColor: AppColors.whiteColor,
          hoverColor: AppColors.whiteColor,
          highlightColor: AppColors.whiteColor,
          splashColor: AppColors.whiteColor,
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),

            color: selectedIndex == index
                ? AppColors.primary100
                : AppColors.whiteColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Wrap(
                  children: [
                    Icon(icons[index], color: AppColors.grey600),
                    SizedBox(width: 8),

                    Text(
                      title[index],
                      style: TextStyles.fontText14Medium(AppColors.blackColor),
                    ),
                  ],
                ),
                Wrap(
                  children: [
                    Text(
                      formatdDate,
                      style: TextStyles.fontText12Regular(AppColors.grey600),
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
            ),
          ),
        );
      },
      separatorBuilder: (_, _) {
        return Divider(color: AppColors.grey300);
      },
      itemCount: title.length,
    );
  }
}
