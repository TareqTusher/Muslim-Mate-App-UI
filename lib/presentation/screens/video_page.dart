import 'package:flutter/material.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/presentation/widgets/discover_page/first_video_player_section.dart';
import 'package:muslim_mate/presentation/widgets/discover_page/horizontal_row_section.dart';
import 'package:muslim_mate/presentation/widgets/discover_page/second_video_player_section.dart';

class VideoPage extends StatelessWidget {
  const VideoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

           
              SizedBox(height: 12),
              FirstVideoPlayerSection(),
              SizedBox(height: 12),
              SizedBox(height: 16),
              Divider(height: 0.5, color: AppColors.blackColor),
              SecondVideoPlayerSection(),
          ],
        ),
      ),
    );
  }
}