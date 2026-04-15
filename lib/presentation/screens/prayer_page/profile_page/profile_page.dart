import 'package:flutter/material.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/strings.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';
import 'package:muslim_mate/presentation/widgets/profile_page/general_section.dart';
import 'package:muslim_mate/presentation/widgets/profile_page/header_section.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Strings.profile,
                  style: TextStyles.fontText20Medium(AppColors.blackColor),
                ),
                SizedBox(height: 12),
                HeaderSection(),
                SizedBox(height: 12,),
                GeneralSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
