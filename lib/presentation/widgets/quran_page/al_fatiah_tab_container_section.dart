import 'package:flutter/material.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';

class AlFatiahTabContainerSection extends StatelessWidget {
  const AlFatiahTabContainerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.grey100),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("juz 1 ", style: TextStyles.fontText14Medium(AppColors.grey700)),
          SizedBox(width: 12),
          Container(width: 1, height: 12, color: AppColors.grey300),
          SizedBox(width: 12),
          Text(
            "The Opening(7 Ayah) ",
            style: TextStyles.fontText14Regular(AppColors.grey400),
          ),
          SizedBox(width: 12),
          Container(width: 1, height: 12, color: AppColors.grey300),
          SizedBox(width: 12),
          Text(
            "Mekkah ",
            style: TextStyles.fontText14Regular(AppColors.grey400),
          ),
        ],
      ),
    );
  }
}
