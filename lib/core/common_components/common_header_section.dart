import 'package:flutter/material.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/strings.dart';

class CommonHeaderContainerSection extends StatelessWidget {
  const CommonHeaderContainerSection({
    super.key,
    required this.onTap,
    this.color = AppColors.grey50,
  });
  final VoidCallback onTap;
  final Color color;
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
            color: color,
            borderRadius: BorderRadius.circular(30),
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(30),
            onTap: onTap,
            child: Icon(Icons.bookmark_outline),
          ),
        ),
      ],
    );
  }
}
