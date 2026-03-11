import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/strings.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';
import 'package:video_player/video_player.dart';

class SecondVideoPlayerSection extends StatefulWidget {
  const SecondVideoPlayerSection({super.key});

  @override
  State<SecondVideoPlayerSection> createState() =>
      _SecondVideoPlayerSectionState();
}

class _SecondVideoPlayerSectionState extends State<SecondVideoPlayerSection> {
  late VideoPlayerController videoPlayerController;
  late ChewieController chewieController;
  @override
  void initState() {
    super.initState();
    videoPlayerController = VideoPlayerController.asset(
      "assets/videos/ramadan_video2.mp4",
    );
    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      allowMuting: true,
      looping: true,

      deviceOrientationsOnEnterFullScreen: [
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ],
      deviceOrientationsAfterFullScreen: [DeviceOrientation.portraitUp],
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
        SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Strings.readAlQuran,
                  style: TextStyles.fontText16Medium(AppColors.blackColor),
                ),
                Text(
                  Strings.readAlQuran,
                  style: TextStyles.fontText14Regular(AppColors.grey500),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.near_me_outlined),
                Icon(Icons.bookmark_add_outlined),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
