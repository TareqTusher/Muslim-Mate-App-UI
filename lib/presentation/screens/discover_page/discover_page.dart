import 'package:flutter/material.dart';
import 'package:muslim_mate/core/common_components/common_header_section.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/strings.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';
import 'package:muslim_mate/presentation/widgets/discover_page/horizontal_row_section.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    Strings.discover,
                    style: TextStyles.fontText20SemiBold(AppColors.blackColor),
                  ),
                ),
                SizedBox(height: 12),
                CommonHeaderContainerSection(
                  color: AppColors.primary600,
                  onTap: () {},
                ),
                const SizedBox(height: 12),
                HorizontalRowSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
