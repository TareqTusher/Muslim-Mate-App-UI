import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';
import 'package:muslim_mate/presentation/screens/discover_page/article_tab.dart';
import 'package:muslim_mate/presentation/screens/discover_page/dua_tab.dart';
import 'package:muslim_mate/presentation/screens/discover_page/law_tab.dart';
import 'package:muslim_mate/presentation/screens/discover_page/video_tab.dart';

class HorizontalRowSection extends StatefulWidget {
  const HorizontalRowSection({super.key});

  @override
  State<HorizontalRowSection> createState() => _HorizontalRowSectionState();
}

class _HorizontalRowSectionState extends State<HorizontalRowSection> {
  List<FaIconData> icons = [
FontAwesomeIcons.video,
FontAwesomeIcons.fileLines,
FontAwesomeIcons.newspaper,
FontAwesomeIcons.handsPraying
    // Icons.article,
    // Icons.book,
    // Icons.inbox_outlined,
  ];

  List<String> text = ["Video", "Article", "Dua", "Law"];

  int selectedIndex = 0;

  late List<Widget> pages;

  @override
  void initState() {
    super.initState();
    pages = [
      const VideoTabContent(),          
      const ArticleTabContent(),
      const DuaTab(),
      const LawTab(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
                        FaIcon(
                          icons[index],size: 16,
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

        const SizedBox(height: 12),

        IntrinsicHeight(
          child: IndexedStack(
            index: selectedIndex,
            children: pages,
          ),
        ),
      ],
    );
  }
}

