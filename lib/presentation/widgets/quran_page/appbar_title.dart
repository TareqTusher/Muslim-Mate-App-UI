import 'package:flutter/material.dart';
import 'package:muslim_mate/core/common_components/common_column_item.dart';
import 'package:muslim_mate/core/common_components/common_modal_bottom_sheet.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';
import 'package:muslim_mate/presentation/widgets/quran_page/go_to_modal_bottom_sheet.dart';

class AppbarTitle extends StatelessWidget {
  const AppbarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          flex: 6,
          child: TextFormField(
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.grey100,
              hintText: "Search",
              hintStyle: TextStyles.fontText14Medium(AppColors.grey600),
              prefixIcon: Icon(
                Icons.search,
                size: 20,
                color: AppColors.grey500,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(24),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),

        Flexible(
          child: Icon(Icons.device_hub, size: 20, color: AppColors.grey500),
        ),
        Flexible(
          child: Icon(Icons.settings, size: 20, color: AppColors.grey500),
        ),
        Flexible(
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: AppColors.grey100,
              borderRadius: BorderRadius.circular(100),
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(100),
              focusColor: AppColors.whiteColor,
              hoverColor: AppColors.whiteColor,
              highlightColor: AppColors.whiteColor,
              onTap: () {
                GoTo.goToModalBottomSheet(context);
              },

              child: Icon(
                Icons.menu_book_outlined,
                size: 20,
                color: AppColors.grey500,
              ),
            ),
          ),
        ),
      ],
    );
  }


}
