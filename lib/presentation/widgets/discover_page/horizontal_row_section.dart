import 'package:flutter/material.dart';
import 'package:muslim_mate/core/styles/colors.dart';

class HorizontalRowSection extends StatefulWidget {
  const HorizontalRowSection({super.key});

  @override
  State<HorizontalRowSection> createState() => _HorizontalRowSectionState();
}

class _HorizontalRowSectionState extends State<HorizontalRowSection> {
  List<IconData> icons = [
    Icons.video_call,
    Icons.article,
    Icons.book,
    Icons.inbox_outlined,
  ];
  List<String> text = ["Video", "Article", "Dua", "Law"];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: InkWell(
                  borderRadius: BorderRadius.circular(100),
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Container(
                    height: 40,
                    width: MediaQuery.sizeOf(context).width * 0.214,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: selectedIndex == index
                          ? AppColors.primary600
                          : AppColors.grey400.withValues(alpha: 0.1),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(icons[index], color: AppColors.grey400),
                        Text(text[index]),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
