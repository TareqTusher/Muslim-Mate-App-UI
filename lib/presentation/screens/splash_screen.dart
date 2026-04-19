import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/common_components/hexagon_clipper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:muslim_mate/data/controller/splash_screen_controller.dart';
class SplashScreen extends ConsumerWidget {
  const SplashScreen({super.key});



  @override
  Widget build(BuildContext context,WidgetRef ref) {
    ref.watch(splashScreenProvider);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primary600,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.light,
          ),
        ),
        backgroundColor: AppColors.primary600,
        body: Center(
          child: ClipPath(
            clipper: HexagonClipper(),
            child: Container(  
              width: 300,
              height: 350,
              decoration: BoxDecoration(
                
                borderRadius: BorderRadius.circular(8),
                color: AppColors.whiteColor,
              ),
              child:  Center(
                child: Icon(
                  Icons.menu_book_outlined,
                  color: AppColors.primary600,
                  size:100,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
