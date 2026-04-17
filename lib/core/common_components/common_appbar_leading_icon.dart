import 'package:flutter/material.dart';
import 'package:muslim_mate/core/styles/colors.dart';

class CommonAppbarLeadingIcon extends StatelessWidget {
  const CommonAppbarLeadingIcon({super.key, required this.onTap});
final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      focusColor: AppColors.whiteColor,
      hoverColor: AppColors.whiteColor,
      highlightColor: AppColors.whiteColor,
      splashColor: AppColors.whiteColor,
            onTap: onTap,
            child: Icon(Icons.chevron_left, size: 24, color: AppColors.grey600),
          );
  }
}