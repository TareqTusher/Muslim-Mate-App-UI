import 'package:flutter/material.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';
import 'package:muslim_mate/presentation/screens/quran_page/juz_tab.dart';
import 'package:muslim_mate/presentation/screens/quran_page/last_read_tab.dart';
import 'package:muslim_mate/presentation/screens/quran_page/surah_tab.dart';

class ToptabselectorWidget extends StatefulWidget {
  const ToptabselectorWidget({super.key});

  @override
  State<ToptabselectorWidget> createState() => _ToptabselectorWidgetState();
}

class _ToptabselectorWidgetState extends State<ToptabselectorWidget> {
  int selectedIndex = 0;
  List<String> text = ["Surah", "juz", "Last Read"];
  late List<Widget> pages = [];

  @override
  void initState() {
    super.initState();
    pages = [SurahTab(), JuzTab(), LastReadTab()];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 40,
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
                    width: MediaQuery.sizeOf(context).width * 0.294,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: selectedIndex == index
                          ? AppColors.primary600
                          : AppColors.grey400.withValues(alpha: 0.1),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
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
