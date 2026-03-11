import 'package:flutter/material.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';
import 'package:muslim_mate/presentation/screens/article_page.dart';
import 'package:muslim_mate/presentation/screens/discover_page.dart';

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

  // ✅ pages list সঠিকভাবে define করা
  late List<Widget> pages;

  @override
  void initState() {
    super.initState();
    pages = [
      const DiscoverPage(),
      const ArticlePage(),
      const Center(child: Text("Dua Page")),
      const Center(child: Text("Law Page")),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: text.length,
            itemBuilder: (context, index) {
              return Padding(
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
                        Icon(
                          icons[index],
                          color: selectedIndex == index
                              ? AppColors.whiteColor
                              : AppColors.grey400,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          text[index],
                          style: TextStyles.fontText14Regular(
                            selectedIndex == index
                                ? AppColors.whiteColor
                                : AppColors.grey400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),

        // ✅ IndexedStack ব্যবহার করলে page rebuild হবে না, state maintain থাকবে
        SizedBox(
          height: 30,
          child: IndexedStack(
            index: selectedIndex,
            children: pages,
          ),
        ),
      ],
    );
  }
}