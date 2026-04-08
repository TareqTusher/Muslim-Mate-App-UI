import 'package:flutter/material.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';

class CommonColumnItem extends StatelessWidget {
  const CommonColumnItem({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.grey100,
          ),
          child: Icon(icon, size: 20, color: AppColors.grey600),
        ),
        Text(text, style: TextStyles.fontText12Regular(AppColors.grey700)),
      ],
    );
  }
}
