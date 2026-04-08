import 'package:flutter/material.dart';
import 'package:muslim_mate/core/common_components/common_modal_bottom_sheet.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';

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
          child: Icon(Icons.device_hub, size: 30, color: AppColors.grey500),
        ),
        Flexible(
          child: Icon(Icons.settings, size: 30, color: AppColors.grey500),
        ),
        Flexible(
          child: Container(
            height: 50,
            width: 50,
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
               CommonModalBottomSheet.show(context: context,title: "dfdf", children:          
                 Row(
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
                        items: ["1. Surah"]
                            .map((e) => DropdownMenuItem(
                                  value: e,
                                  child: Text(e),
                                ))
                            .toList(),
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
                        items: ["1", "2"]
                            .map((e) => DropdownMenuItem(
                                  value: e,
                                  child: Text(e),
                                ))
                            .toList(),
                        onChanged: (v) {},
                      ),
                    ),
                  ],
                ),
               
               );
              },

              child: Icon(
                Icons.menu_book_outlined,
                size: 30,
                color: AppColors.grey500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
