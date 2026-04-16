import 'package:flutter/material.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/strings.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';
import 'package:muslim_mate/presentation/widgets/profile_page/list_data.dart';

class GeneralSection extends StatelessWidget {
  const GeneralSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> titleText = ["Font Size", "dark Theme"];
    List<String> subTitleText = ["Medium", "Switch to a dark color scheme"];
List<IconData>icons=[
Icons.text_format,
Icons.nightlight_round
];

List<bool>isEanable=[
false,
true,
];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          Strings.general,
          style: TextStyles.fontText14Medium(AppColors.grey600),
        ),

        ListView.separated(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return ListData(
              title: titleText[index],
              icon: icons[index],
              subtitle: subTitleText[index],
              showSwitch: isEanable[index],
            );
          },
          separatorBuilder: (_, _) {
            return Divider(
              height: 0.5,
              color: AppColors.grey400,
            );
          },
          itemCount: 2,
        ),
      ],
    );
  }
}
