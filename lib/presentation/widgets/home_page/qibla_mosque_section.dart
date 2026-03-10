import 'package:flutter/material.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/strings.dart';

class QiblaMosqueSection extends StatelessWidget {
  const QiblaMosqueSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color:AppColors.grey300,width: 0.5 )
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right:  12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
                children: [
                  Text(Strings.qibla),
                  Icon(Icons.explore, color: Colors.teal),
                ],
              ),
            ),
          ),
          Container(height: 50, width: 2, color: AppColors.grey300),

          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 8),
                Text(Strings.mosque),
                Icon(Icons.location_on, color: Colors.teal),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
