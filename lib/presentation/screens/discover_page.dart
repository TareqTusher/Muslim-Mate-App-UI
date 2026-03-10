import 'package:flutter/material.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/strings.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';
import 'package:muslim_mate/presentation/widgets/discover_page/header_container_section.dart';
import 'package:muslim_mate/presentation/widgets/discover_page/horizontal_row_section.dart';
import 'package:muslim_mate/presentation/widgets/discover_page/video_player_section.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                Strings.discover,
                style: TextStyles.fontText16Medium(AppColors.blackColor),
              ),

              HeaderContainerSection(),
              SizedBox(height: 12),
              HorizontalRowSection(),
              SizedBox(height:12),
              VideoPlayerSection()
            ],
          ),
        ),
      ),
    );
  }
}
