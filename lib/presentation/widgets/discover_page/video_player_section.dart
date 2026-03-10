import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerSection extends StatefulWidget {
  const VideoPlayerSection({super.key});

  @override
  State<VideoPlayerSection> createState() => _VideoPlayerSectionState();
}

class _VideoPlayerSectionState extends State<VideoPlayerSection> {
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
      looping: true
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: AspectRatio(
      
      aspectRatio: 16/9,
      child: Chewie(controller: chewieController)));
  }
}
