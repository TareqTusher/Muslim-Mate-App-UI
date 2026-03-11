import 'package:flutter/material.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/strings.dart';

class HeaderContainerSection extends StatelessWidget {
  const HeaderContainerSection({super.key});

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
        Container(
          width: MediaQuery.sizeOf(context).width * 0.12,
          height: 50,
          decoration: BoxDecoration(
            color: AppColors.grey300.withValues(alpha: 0.2),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Icon(Icons.bookmark_outline),
        ),
      ],
    );
  }
}
