import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:muslim_mate/core/router/app_routes.dart';
import 'package:muslim_mate/core/router/router.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/common_components/hexagon_clipper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
void nextPage(){
  Future.delayed(Duration(seconds: 1,),()=>router.push(AppRoutesPath.logInPage));
}

@override
void initState(){
  nextPage();
  super.initState();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
