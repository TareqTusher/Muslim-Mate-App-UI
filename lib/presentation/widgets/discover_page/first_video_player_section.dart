import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/strings.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';
import 'package:video_player/video_player.dart';

class FirstVideoPlayerSection extends StatefulWidget {
  const FirstVideoPlayerSection({super.key});

  @override
  State<FirstVideoPlayerSection> createState() =>
      _FirstVideoPlayerSectionState();
}

class _FirstVideoPlayerSectionState extends State<FirstVideoPlayerSection> {
  late VideoPlayerController videoPlayerController;
  late ChewieController chewieController;
  void initState() {
    super.initState();
    videoPlayerController = VideoPlayerController.asset(
      "assets/videos/ramadan.mp4",
    );
    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      allowMuting: true,
      looping: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: Chewie(controller: chewieController),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Strings.gloryOfRamadan,
                  style: TextStyles.fontText16Medium(AppColors.blackColor),
                ),
                Text(
                  Strings.floydMiles,
                  style: TextStyles.fontText14Regular(AppColors.grey500),
                ),
              ],
            ),
            Row(
              children: [
FaIcon(FontAwesomeIcons.paperPlane,size: 16,color: AppColors.grey500,),    

SizedBox(width: 8,),            Icon(Icons.bookmark_outline, color: AppColors.primary500),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
