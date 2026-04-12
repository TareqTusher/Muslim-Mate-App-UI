import 'package:flutter/material.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';

class SurahTitle extends StatelessWidget {
  const SurahTitle({super.key, required this.title, required this.icons});
  final String title;
  final IconData icons;
  

  @override
  Widget build(BuildContext context) {
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Wrap(
                  children: [
                    Icon(
                      Icons.folder_outlined,
                      size: 24,
                      color: AppColors.grey600,
                    ),
                    SizedBox(width: 8),
                    Text(
                      title,
                      style: TextStyles.fontText14Medium(
                        AppColors.blackColor,
                      ),
                    ),
                  ],
                ),
            
                Icon(icons, size: 24, color: AppColors.grey700),
              ],
            );
  }
}