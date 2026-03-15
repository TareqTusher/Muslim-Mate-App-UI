import 'package:flutter/material.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';

class CommonTitleAndDescription extends StatelessWidget {
  const CommonTitleAndDescription({super.key, required this.title, required this.description});
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyles.fontText16Medium(AppColors.blackColor)),
        SizedBox(height: 4),

        Text(
          description,
          style: TextStyles.fontText14Regular(AppColors.grey500),
        ),
      ],
    );
  }
}
