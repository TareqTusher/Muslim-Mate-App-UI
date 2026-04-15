import 'package:flutter/material.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor: AppColors.grey100,
              radius: 30,
              backgroundImage: AssetImage("assets/images/tusher.jpg"),
            ),

            SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Tariqul",
                  style: TextStyles.fontText14Medium(AppColors.blackColor),
                ),
                Container(
                  //width: 120,
                  decoration: BoxDecoration(
                    color: AppColors.primary100,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 2.0,
                      horizontal: 4,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.location_city,
                          size: 16,
                          color: AppColors.primary600,
                        ),
                        SizedBox(width: 4),

                        Text(
                          "Dhaka",
                          style: TextStyles.fontText12Regular(
                            AppColors.primary600,
                          ),
                        ),
                        SizedBox(width: 4),
                        Text(
                          "Mirpur 1",
                          style: TextStyles.fontText12Regular(
                            AppColors.primary600,
                          ),
                        ),
                        Icon(
                          Icons.chevron_right,
                          color: AppColors.primary600,
                          size: 16,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),

        Icon(Icons.edit_note_outlined, size: 24, color: AppColors.grey600),
      ],
    );
  }
}
