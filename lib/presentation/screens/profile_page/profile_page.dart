import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:muslim_mate/core/common_components/custom_elevated_button.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/strings.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';
import 'package:muslim_mate/presentation/widgets/profile_page/general_section.dart';
import 'package:muslim_mate/presentation/widgets/profile_page/header_section.dart';
import 'package:muslim_mate/presentation/widgets/profile_page/prayer_settings_section.dart';

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
                SizedBox(height: 12),
                GeneralSection(),
                SizedBox(height: 12),
                PrayerSettingsSection(),
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.only(bottom: 28.0),
                  child: Center(
                    child: SizedBox(
                      width: 100,
                      height: 30,
                      child: CustomElevatedButton(
                        text: Strings.logout,
                        onTap: () {},
                        backgroundClr: Colors.red,
                        borderColor: Colors.red,
                        icons: FontAwesomeIcons.rightFromBracket,
                        iconColor: AppColors.whiteColor,
                        color: AppColors.whiteColor,
                      ),
                    ),
                  ),
                ),
              
               // Padding(padding: EdgeInsets.only(bottom: 10))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
