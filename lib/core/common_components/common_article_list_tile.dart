import 'package:flutter/material.dart';
import 'package:muslim_mate/core/styles/colors.dart';

class CommonArticleListTile extends StatelessWidget {
  const CommonArticleListTile({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:  12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text),
      
          Wrap(
            children: [
              Icon(Icons.send, size: 24, color: AppColors.grey400),
              SizedBox(width: 12),
              Icon(Icons.bookmark_rounded, size: 24, color: AppColors.grey400),
            ],
          ),
        ],
      ),
    );
  }
}
