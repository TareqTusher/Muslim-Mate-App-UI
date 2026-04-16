import 'package:flutter/material.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/strings.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';
import 'package:muslim_mate/presentation/widgets/profile_page/list_data.dart';

class PrayerSettingsSection extends StatelessWidget {
  const PrayerSettingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> titleText = [
      "Show Latin Letters",
      "Show Translation",
      "Show Tajweed",
      "Translator",
      "Reciters",
      "Adzan Notification",
      "Imsak Notification",
    ];
    List<String> subTitleText = [
      Strings.latinHelps,
      Strings.english,
      Strings.tajweedDetail,
      Strings.dr,
      Strings.mishary,
      Strings.hanan,
      Strings.defaultText,
    ];
    List<IconData> icons = [
      Icons.menu, // 3 horizontal lines (top icon)

      Icons.menu_book,

      Icons.grid_view,
      Icons.person_outline,

      Icons.badge_outlined,

      Icons.notifications_none,
      Icons.notifications,
    ];

    List<bool> isEanable = [true, true, true, false, false, true, true];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          Strings.prayerSetting,
          style: TextStyles.fontText14Medium(AppColors.grey600),
        ),
        ListView.separated(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return ListData(
              showSwitch: isEanable[index],
              title: titleText[index],
              icon: icons[index],
              subtitle: subTitleText[index],
            );
          },
          separatorBuilder: (_, _) {
            return Divider(
              height: 0.5,
              color: AppColors.grey300,
            );
          },
          itemCount: titleText.length,
        ),
      ],
    );
  }
}
