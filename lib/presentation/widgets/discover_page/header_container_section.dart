import 'package:flutter/material.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/strings.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';

class HeaderContainerSection extends StatelessWidget {
  const HeaderContainerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width * 0.8,
          height: 50,
          decoration: BoxDecoration(
            color: AppColors.grey300.withValues(alpha: 0.2),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              children: [
                Icon(Icons.search, size: 20, color: AppColors.grey400),
                SizedBox(width: 8),
                Text(
                  Strings.search,
                  style: TextStyles.fontText14Regular(AppColors.grey400),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 8),
        Container(
          width: MediaQuery.sizeOf(context).width * 0.12,
          height: 50,
          decoration: BoxDecoration(
            color: AppColors.grey300.withValues(alpha: 0.2),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Icon(Icons.bookmark_outline),
        ),
      ],
    );
  }
}
