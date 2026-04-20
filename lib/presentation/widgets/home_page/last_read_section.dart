import 'package:flutter/material.dart';
import 'package:muslim_mate/core/common_components/custom_elevated_button.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/strings.dart';

class LastReadSection extends StatelessWidget {
  const LastReadSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const SizedBox(width: 10),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Last Read"),
                  Row(
                    children: [
                      Icon(Icons.menu_book, color: Colors.teal),
                      SizedBox(width: 6),
                      Text(
                        "Al Baqarah : 120",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),

          SizedBox(
            height: 30,
            width: 80,
            child: CustomElevatedButton(
              size: 12,
              text: Strings.continu,
              color: AppColors.primary50,
              onTap: () {},
              backgroundClr: AppColors.primary600,
            ),
          ),
        ],
      ),
    );
  }
}
