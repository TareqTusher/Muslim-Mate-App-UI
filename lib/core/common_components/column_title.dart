import 'package:flutter/material.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';

class ColumnTitle extends StatelessWidget {
  const ColumnTitle({super.key, required this.text, required this.icon, required this.onTap});
  final String text;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          hoverColor: AppColors.whiteColor,
          focusColor: AppColors.whiteColor,
          highlightColor: AppColors.whiteColor,
          child: Container(
            height: 30,
            width: 40,
            decoration: BoxDecoration(
          color: AppColors.grey100,
          shape: BoxShape.circle
            ),
            child: Icon(icon, size: 18, color: AppColors.grey500)),
        ),
        Text(text, style: TextStyles.fontText12Regular(AppColors.grey500)),
      ],
    );
  }
}
