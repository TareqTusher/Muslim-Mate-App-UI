import 'package:flutter/material.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/presentation/widgets/quran_page/surah_title.dart';

class SurahFlowTab extends StatefulWidget {
  const SurahFlowTab({super.key});

  @override
  State<SurahFlowTab> createState() => _SurahFlowTabState();
}

class _SurahFlowTabState extends State<SurahFlowTab> {
  bool isPrayExpanded = false;
  bool isMuamalahExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  isPrayExpanded = !isPrayExpanded;
                });
              },
              child: SurahTitle(
                title: "Pray",
                icons: isPrayExpanded
                    ? Icons.expand_more
                    : Icons.expand_less,
              ),
            ),

            /// FIXED PART
            isPrayExpanded
                ? ListView.separated(
                  shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Text("data");
                      },
                      separatorBuilder: (_, _) {
                        return Divider();
                      },
                      itemCount: 3,
                    
                  )
                : SizedBox(height: 10,),

            SizedBox(height: 12),

            SurahTitle(title: "Mumallah", icons: Icons.home),
          ],
        ),
      ),
    );
  }
}