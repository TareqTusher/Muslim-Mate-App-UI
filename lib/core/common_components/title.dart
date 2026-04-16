import 'package:flutter/material.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';

class TitleAndDescription extends StatelessWidget {
  const TitleAndDescription({super.key, required this.color, required this.text, required this.subtitle});
  final Color color;
  final String text,subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text, style: TextStyles.fontText14Medium(color)),
        SizedBox(height: 12,),
        Text(subtitle,style: TextStyles.fontText12Regular(AppColors.blackColor),),
        SizedBox(height: 12,)
      ],
    );
  }
}
