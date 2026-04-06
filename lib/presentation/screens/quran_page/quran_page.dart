import 'package:flutter/material.dart';
import 'package:muslim_mate/core/common_components/common_header_section.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/strings.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';
import 'package:muslim_mate/presentation/widgets/quran_page/top_tab_selector.dart';

class QuranPage extends StatelessWidget {
  const QuranPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Strings.alQuran,
                style: TextStyles.fontText20SemiBold(
                  AppColors.blackColor,
                ),
              ),

              const SizedBox(height: 8),

              CommonHeaderContainerSection(onTap: () {}),

              const SizedBox(height: 12),

              Expanded(child: ToptabselectorWidget()),
            ],
          ),
        ),
      ),
    );
  }
}