import 'package:flutter/material.dart';
import 'package:muslim_mate/core/common_components/common_column_item.dart';
import 'package:muslim_mate/core/common_components/common_modal_bottom_sheet.dart';
import 'package:muslim_mate/presentation/widgets/quran_page/book_mark_group_modal_sheet.dart';

class SurahName {
  static void surahModalBottomSheet(BuildContext context) {
    return CommonModalBottomSheet.show(
      context: context,
      icon: Icons.play_arrow,
      buttonText: "Play Murattal",
      title: "1.Al Fatihah:1",
      children: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CommonColumnItem(icon: Icons.copy, text: 'Copy'),
            CommonColumnItem(icon: Icons.send_sharp, text: 'Share'),
            CommonColumnItem(
              icon: Icons.bookmark_add_outlined,
              text: 'Bookmark',
            ),
          ],
        ),
      ),
      onTap: () {
        BookMarkGroupModalSheet.bookMarkGroupBottomSheet(context);
      },
    );
  }
}
