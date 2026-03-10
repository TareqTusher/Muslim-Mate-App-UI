import 'package:flutter/material.dart';
import 'package:muslim_mate/core/common_components/custom_elevated_button.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/strings.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';

class DailyActivitySection extends StatelessWidget {
  const DailyActivitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Daily Activity",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 10),

                  Text(Strings.activityCheckList),
                ],
              ),
              Container(
                alignment: Alignment.center,
                height: 30,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.brown,
                ),
                child: Text(
                  "50%",
                  style: TextStyles.fontText14Medium(AppColors.whiteColor),
                ),
              ),
            ],
          ),

          activityTile("Alms", "4/10"),
          activityTile("Recite the Al Quran", "8/10"),

          const SizedBox(height: 20),

          CustomElevatedButton(height: 50, text: Strings.goToCheckList, onTap: (){}, backgroundClr: AppColors.primary600,color: AppColors.whiteColor,),
        ],
      ),
    );
  }

  Widget activityTile(String title, String progress) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),

          Row(
            children: [
              Text(progress),

              const SizedBox(width: 8),

              const Icon(Icons.radio_button_unchecked),
            ],
          ),
        ],
      ),
    );
  }
}
