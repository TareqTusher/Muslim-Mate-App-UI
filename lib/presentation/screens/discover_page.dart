import 'package:flutter/material.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/strings.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';
import 'package:muslim_mate/presentation/widgets/discover_page/header_container_section.dart';
import 'package:muslim_mate/presentation/widgets/discover_page/horizontal_row_section.dart';
import 'package:muslim_mate/presentation/widgets/discover_page/first_video_player_section.dart';
import 'package:muslim_mate/presentation/widgets/discover_page/second_video_player_section.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {

  List<Map<String,String>>videos=[
{"title":Strings.gloryOfRamadan,"url":"assets/videos/ramadan_video2.mp4"},
{"title":Strings.readAlQuran,"url":"assets/videos/ramadan_video2.mp4"}


  ];
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
              SizedBox(height: 12),
              FirstVideoPlayerSection(),
              SizedBox(height: 12),
              SizedBox(height: 16),
              Divider(height: 0.5, color: AppColors.blackColor),
              SecondVideoPlayerSection(),
            ],
          ),
        ),
      ),
    );
  }
}
