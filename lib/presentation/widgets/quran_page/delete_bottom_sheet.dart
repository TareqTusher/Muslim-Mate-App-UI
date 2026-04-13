import 'package:flutter/material.dart';
import 'package:muslim_mate/core/common_components/custom_elevated_button.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';

class DeleteBottomSheet {
  static void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.delete, size: 40, color: Colors.red),

                SizedBox(height: 12),
                Text(
                  "Delete Bookmark Group?",
                  style: TextStyles.fontText16SemiBold(AppColors.blackColor),
                ),
                SizedBox(height: 8,),
                SizedBox(
                  width: 300,
                  child: Text(
                    "All Ayah you saved this bookmark group will be permanently deleted ",
                    style: TextStyles.fontText12Regular(AppColors.grey600),
                    maxLines: 2,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: CustomElevatedButton(
                        text: "Delete",
                        color: AppColors.whiteColor,
                        onTap: () {},
                        borderColor: Colors.red,
                        backgroundClr: Colors.red,
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: CustomElevatedButton(
                        text: "Delete",
                        onTap: () {},
                        backgroundClr: AppColors.whiteColor,

                        // borderColor: AppColors.primary600,
                      ),
                    ),
                  ],
                ),
                //Text("data")
              ],
            ),
          ),
        );
      },
    );
  }
}
