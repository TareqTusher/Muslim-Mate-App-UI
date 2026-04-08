import 'package:flutter/material.dart';
import 'package:muslim_mate/core/common_components/common_modal_bottom_sheet.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';

class BookMarkGroupModalSheet {
  static void bookMarkGroupBottomSheet(BuildContext context) {
    CommonModalBottomSheet.show(
      context: context,

      title: "Choose Bookmark Group",
      titleIcon: Icons.cancel,

      children: Column(
        children: [
          ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Icon(Icons.file_copy, size: 24, color: AppColors.grey600),
                  SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Pray",
                        style: TextStyles.fontText14Medium(
                          AppColors.blackColor,
                        ),
                      ),
                      Text(
                        "3 Surah",
                        style: TextStyles.fontText12Regular(AppColors.grey700),
                      ),
                    ],
                  ),
                ],
              );
            },
            separatorBuilder: (_, _) {
              return Divider();
            },
            itemCount: 2,
          ),
        ],
      ),
      buttonText: "Add New Group",
      icon: Icons.add,

      onTap: () {
        CommonModalBottomSheet.show(
          context: context,
          cancel: "Cancel",
          buttonText: "Save",
          title: "New Bookmark Group",
          onTap: () {},
          children: TextFormField(
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.grey100,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        );
      },

      titleOnTap: () {
        Navigator.pop(context);
      },
    );
  }
}
