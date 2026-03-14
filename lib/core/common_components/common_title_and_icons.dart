import 'package:flutter/material.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';

class CommonTitleAndIcons extends StatelessWidget {
  const CommonTitleAndIcons({
    super.key,
    required this.icons,
    required this.titleText, required this.subTitleText, required this.onTap,
  });
  final IconData icons;
  final String titleText;
  final String subTitleText;
final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
hoverColor: AppColors.whiteColor,
focusColor: AppColors.whiteColor,
highlightColor: AppColors.whiteColor,
splashColor: AppColors.whiteColor,
      onTap: onTap,
      child: Row(
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
                subTitleText,
                style: TextStyles.fontText14Regular(AppColors.grey400),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
