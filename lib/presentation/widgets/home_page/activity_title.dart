import 'package:flutter/material.dart';
import 'package:muslim_mate/core/styles/colors.dart';

class ActivityTitle extends StatelessWidget {
  const ActivityTitle({super.key, required this.title, required this.progress});
  final String title;
  final String progress;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),

          Row(
            children: [
              Text(progress),

              const SizedBox(width: 8),

              const Icon(Icons.radio_button_unchecked),
            ],
          ),
        ],
      ),
    );
  }
}