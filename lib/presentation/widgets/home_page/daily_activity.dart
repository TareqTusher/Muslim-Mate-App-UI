import 'package:flutter/material.dart';
import 'package:muslim_mate/core/common_components/custom_elevated_button.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/strings.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';
import 'package:muslim_mate/presentation/widgets/home_page/activity_title.dart';

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
                height: 24,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.deepOrangeAccent,
                ),
                child: Text(
                  "50%",
                  style: TextStyles.fontText12Regular(AppColors.whiteColor),
                ),
              ),
            ],
          ),

          ActivityTitle(title: "Alarms",progress: "4/10",),
          ActivityTitle(title:  "Recite the Al Quran",progress:  "8/10"),

          const SizedBox(height: 20),

          CustomElevatedButton(height: 44, text: Strings.goToCheckList, onTap: (){}, backgroundClr: AppColors.primary600,color: AppColors.whiteColor,),
        ],
      ),
    );
  }


}
