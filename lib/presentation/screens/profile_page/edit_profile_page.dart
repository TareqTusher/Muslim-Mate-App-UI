import 'package:flutter/material.dart';
import 'package:muslim_mate/core/common_components/common_appbar_leading_icon.dart';
import 'package:muslim_mate/core/common_components/custom_elevated_button.dart';
import 'package:muslim_mate/core/router/app_routes.dart';
import 'package:muslim_mate/core/router/router.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/strings.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CommonAppbarLeadingIcon(onTap:(){            router.push(AppRoutesPath.profilePage);
}),

        title: Text(
          Strings.editProfile,
          style: TextStyles.fontText14SemiBold(AppColors.blackColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 100),
              Center(
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 100,
                      backgroundImage: AssetImage("assets/images/tusher.jpg"),
                    ),
                    Positioned(
                      right: 4,
                      bottom: 4,

                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: AppColors.primary500,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.photo,
                          size: 24,
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              Text(
                Strings.name,
                style: TextStyles.fontText14Medium(AppColors.grey600),
              ),
              SizedBox(height: 12),
              TextFormField(
                decoration: InputDecoration(
                  hintText: Strings.name,
                  fillColor: AppColors.grey100,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(12.0),
        child: CustomElevatedButton(
          text: Strings.saveChange,
          onTap: () {
            router.push(AppRoutesPath.settingsPage);
          },
          backgroundClr: AppColors.primary600,
          borderColor: AppColors.primary600,
          color: AppColors.whiteColor,
        ),
      ),
    );
  }
}
