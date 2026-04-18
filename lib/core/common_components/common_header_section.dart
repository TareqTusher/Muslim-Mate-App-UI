import 'package:flutter/material.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/strings.dart';

class CommonHeaderContainerSection extends StatelessWidget {
  const CommonHeaderContainerSection({
    super.key,
    required this.onTap,
    this.color = AppColors.grey50,  this.iconColor=AppColors.blackColor,
  });
  final VoidCallback onTap;
  final Color color,iconColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.8,
          child: TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: Strings.search,
              filled: true,
              fillColor: AppColors.grey300.withValues(alpha: 0.2),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ),
        SizedBox(width: 8),
        Expanded(
          child: Container(
            width: MediaQuery.sizeOf(context).width * 0.12,
            height: 60,
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
            child: InkWell(
              focusColor: AppColors.whiteColor,
              highlightColor: AppColors.whiteColor,
              hoverColor: AppColors.whiteColor,
              splashColor: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(100),
              onTap: onTap,
              child: Icon(Icons.bookmark_outline,color:iconColor ,),
            ),
          ),
        ),
      ],
    );
  }
}
