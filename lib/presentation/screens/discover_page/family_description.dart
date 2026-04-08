import 'package:flutter/material.dart';
import 'package:muslim_mate/core/common_components/common_header_section.dart';
import 'package:muslim_mate/core/router/app_routes.dart';
import 'package:muslim_mate/core/router/router.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';
import 'package:muslim_mate/presentation/widgets/discover_page/family_members.dart';

class FamilyDescription extends StatelessWidget {
  const FamilyDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
      
        appBar: AppBar(
          leading: InkWell(
            child: InkWell(
              onTap: () {
                router.push(AppRoutesPath.duaTab);
              },
              child: Icon(Icons.arrow_back, size: 24, color: AppColors.grey500),
            ),
          ),
          backgroundColor: AppColors.whiteColor,
        ),
      
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FamilyMembers(),
                SizedBox(height: 12),
                CommonHeaderContainerSection(
                  onTap: () {},
                  color: AppColors.primary600,
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Prayer of Both Parents",
                      style: TextStyles.fontText14Medium(AppColors.grey700),
                    ),
      
                    Row(
                      children: [
                        Icon(Icons.send, size: 20, color: AppColors.grey500),
                        SizedBox(width: 8),
                        Icon(
                          Icons.bookmark_rounded,
                          size: 20,
                          color: AppColors.primary400,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
