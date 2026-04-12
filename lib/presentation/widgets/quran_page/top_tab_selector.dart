// ignore: file_names
import 'package:flutter/material.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';
import 'package:muslim_mate/presentation/screens/quran_page/juz_tab.dart';
import 'package:muslim_mate/presentation/screens/quran_page/last_read_tab.dart';
import 'package:muslim_mate/presentation/screens/quran_page/surah_flow_tab.dart';
import 'package:muslim_mate/presentation/screens/quran_page/surah_tab.dart';

class ToptabselectorWidget extends StatefulWidget {
  const ToptabselectorWidget({super.key});

  @override
  State<ToptabselectorWidget> createState() =>
      _ToptabselectorWidgetState();
}

class _ToptabselectorWidgetState extends State<ToptabselectorWidget> {
  int selectedIndex = 0;

  final List<String> text = ["Surah", "Juz", "Last Read","Surah Flow"];

  late final List<Widget> pages;

  @override
  void initState() {
    super.initState();
    pages = const [
      SurahTab(),
      JuzTab(),
      LastReadTab(),
      SurahFlowTab(),

    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// 🔹 TAB BUTTONS
        SizedBox(
          height: 40,
          child: ListView.builder(
            
            scrollDirection: Axis.horizontal,
            itemCount: text.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 12),
                child: InkWell(
                  borderRadius: BorderRadius.circular(100),
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.28,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: selectedIndex == index
                          ? AppColors.primary600
                          : AppColors.grey400.withValues(alpha: 0.1),
                    ),
                    child: Center(
                      child: Text(
                        text[index],
                        style: TextStyles.fontText14Regular(
                          selectedIndex == index
                              ? AppColors.whiteColor
                              : AppColors.grey400,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),

        const SizedBox(height: 12),

        Expanded(
          child: IndexedStack(
            index: selectedIndex,
            children: pages,
          ),
        ),
      ],
    );
  }
}