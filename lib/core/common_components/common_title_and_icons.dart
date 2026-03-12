import 'package:flutter/material.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';

class CommonTitleAndIcons extends StatelessWidget {
  const CommonTitleAndIcons({
    super.key,
    required this.icons,
    required this.titleText,
  });
  final IconData icons;
  final String titleText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(icons, size: 30, color: AppColors.grey400),
        SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              titleText,
              style: TextStyles.fontText14SemiBold(AppColors.blackColor),
            ),
            Text(
              "1 Dua",
              style: TextStyles.fontText14Regular(AppColors.grey400),
            ),
          ],
        ),
      ],
    );
  }
}
