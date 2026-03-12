import 'package:flutter/material.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/presentation/widgets/discover_page/first_video_player_section.dart';
import 'package:muslim_mate/presentation/widgets/discover_page/second_video_player_section.dart';

class VideoTabContent extends StatelessWidget {
  const VideoTabContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FirstVideoPlayerSection(),
        const SizedBox(height: 12),
        const SizedBox(height: 16),
        Divider(height: 0.5, color: AppColors.blackColor),
        SecondVideoPlayerSection(),
      ],
    );
  }
}