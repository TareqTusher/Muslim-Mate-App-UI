import 'package:flutter/material.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key, this.icons, required this.text, required this.onTap,  this.color=AppColors.primary600, required this.backgroundClr,  this.height=50,  this.borderColor=AppColors.primary600,this.iconColor=AppColors.whiteColor});
  final IconData? icons;
  final String text;
  final VoidCallback onTap;
  final Color color,backgroundClr,borderColor,iconColor;
  final double height;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: onTap,
      child: Container(
        height: height,
        width: double.infinity,
        decoration: BoxDecoration(
          color:backgroundClr ,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: borderColor),
        ),
        child: Center(
          child: icons == null
              ? Text(
                  text,
                  style: TextStyles.fontText14Medium(
                    color,
                  ),
                )
              : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  Icon(icons,size:20, color: iconColor,), SizedBox(width: 8), Text(text,style: TextStyles.fontText14Medium(
                    color,
                  ).copyWith(fontWeight: FontWeight.bold),)]),
        ),
      ),
    );
  }
}
