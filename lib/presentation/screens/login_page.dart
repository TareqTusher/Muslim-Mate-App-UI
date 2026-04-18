import 'package:flutter/material.dart';
import 'package:muslim_mate/core/common_components/custom_elevated_button.dart';
import 'package:muslim_mate/core/common_components/hexagon_clipper.dart';
import 'package:muslim_mate/core/router/app_routes.dart';
import 'package:muslim_mate/core/router/router.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/strings.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        appBar: AppBar(
          
          backgroundColor: AppColors.whiteColor,
          leading: SizedBox()),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    Strings.salam,
                    style: TextStyles.fontText16Medium(AppColors.grey600),
                  ),

                  SizedBox(height: 12),
                  Text(
                    Strings.welcome,
                    style: TextStyles.fontText20Medium(AppColors.blackColor),
                  ),
                  SizedBox(height: 80),
                  ClipPath(
                    clipper: HexagonClipper(),
                    child: Container(
                      width: 300,
                      height: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.primary600,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.menu_book_outlined,
                          color: AppColors.whiteColor,
                          size: 100,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 60),
                  CustomElevatedButton(
                    text: Strings.loginGoogle,
                    iconColor: AppColors.primary500,
                    icons: FontAwesomeIcons.google,
                    onTap: () {
                      router.push(AppRoutesPath.homePage);
                    }, backgroundClr: AppColors.whiteColor,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
