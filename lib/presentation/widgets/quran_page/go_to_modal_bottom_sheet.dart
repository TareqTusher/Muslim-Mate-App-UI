import 'package:flutter/material.dart';
import 'package:muslim_mate/core/common_components/common_column_item.dart';
import 'package:muslim_mate/core/common_components/common_modal_bottom_sheet.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/presentation/widgets/quran_page/surah_modal_bottom_sheet.dart';

class GoTo {
  static void goToModalBottomSheet(BuildContext context) {
    return CommonModalBottomSheet.show(
      context: context,

      title: "Go To",

      buttonText: "Go",
      children: Row(
        children: [
          Expanded(
            child: DropdownButtonFormField(
              decoration: InputDecoration(
                filled: true,
                suffixIcon: Icon(Icons.expand_more),
                fillColor: AppColors.grey100,
                labelText: "Surah",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
              items: [
                "1. Surah",
              ].map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
              onChanged: (v) {},
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: DropdownButtonFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.grey100,
                labelText: "Ayah",
                suffixIcon: Icon(Icons.expand_more),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              items: [
                "1",
                "2",
              ].map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
              onChanged: (v) {},
            ),
          ),
        ],
      ),

      onTap: () {
        SurahName.surahModalBottomSheet(context);
      },
    );
  }
}
