import 'package:flutter/material.dart';
import 'package:muslim_mate/core/common_components/column_title.dart';
import 'package:muslim_mate/core/common_components/common_modal_bottom_sheet.dart';
import 'package:muslim_mate/core/common_components/custom_elevated_button.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/strings.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';
import 'package:muslim_mate/presentation/widgets/quran_page/delete_bottom_sheet.dart';

class PrayEditDeleteBottomSheet {
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
                Text(
                  "Pray",
                  style: TextStyles.fontText14Medium(AppColors.blackColor),
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ColumnTitle(
                      icon: Icons.edit,
                      text: "Edit",
                      onTap: () {
                        CommonModalBottomSheet.show(
                          context: context,
                          children: Column(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Pray",
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ],
                          ),
                          cancel: "Cancel",
                          onTap: () {},
                          buttonText: Strings.save,
                        );
                      },
                    ),
                    ColumnTitle(
                      icon: Icons.delete,
                      text: "Delete",
                      onTap: () {
          DeleteBottomSheet.show(context);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
