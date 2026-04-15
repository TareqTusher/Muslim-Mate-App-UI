import 'package:flutter/material.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';

class ListData extends StatefulWidget {
  const ListData({super.key});

  @override
  State<ListData> createState() => _ListDataState();
}

class _ListDataState extends State<ListData> {
   bool isEnable = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.text_fields_sharp, size: 20, color: AppColors.grey600),
        SizedBox(width: 8),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Font Size",
              style: TextStyles.fontText14SemiBold(AppColors.blackColor),
            ),
            Text(
              "Medium",
              style: TextStyles.fontText12Regular(AppColors.grey600),
            ),
          ],
        ),

        Switch(
          value: isEnable,
          onChanged: (v) {
            setState(() {
               isEnable=v;
            });
          },
        ),
      ],
    );
  }
}
