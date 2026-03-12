import 'package:flutter/material.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';

class FamilyMembers extends StatelessWidget {
  const FamilyMembers({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.group, size: 30, color: AppColors.grey400),
                SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Family",
                      style: TextStyles.fontText14Medium(AppColors.blackColor),
                    ),
                    Text(
                      "1 Dua",
                      style: TextStyles.fontText14Regular(AppColors.grey500),
                    ),
                  ],
                ),
              ],
            );
  }
}