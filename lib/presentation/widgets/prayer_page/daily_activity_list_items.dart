import 'package:flutter/material.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';

class DailyActivityListItems extends StatefulWidget {
  const DailyActivityListItems({super.key});

  @override
  State<DailyActivityListItems> createState() => _DailyActivityListItemsState();
}

class _DailyActivityListItemsState extends State<DailyActivityListItems> {
  List<String> text = [
    "Alms",
    "Dhuha Prayer",
    "Recite the Al Quran",
    "Sunnah Prayer Routine",
    "Tahajud Prayer",
    "Tarawih Prayer",
  ];

  Set<int> selectedIndex = {};

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: text.length,
      itemBuilder: (context, index) {
        final bool isSelected = selectedIndex.contains(index);
        return InkWell(
          onTap: () {
            setState(() {
              if (selectedIndex.contains(index)) {
                selectedIndex.remove(index);
              } else {
                selectedIndex.add(index);
              }
            });
          },
          child: Card(
            color: isSelected ? AppColors.primary100 : AppColors.grey100,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(text[index]),
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "10",
                              style: TextStyles.fontText14Regular(
                                AppColors.primary500,
                              ),
                            ),
                            TextSpan(
                              text: "/10",
                              style: TextStyles.fontText14Regular(
                                AppColors.grey500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 12),
                      Container(
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                          color: isSelected
                              ? AppColors.primary600
                              : AppColors.whiteColor,
                          border: Border.all(
                            color: isSelected
                                ? AppColors.primary600
                                : AppColors.grey500,
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.done,
                          size: 16,
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}