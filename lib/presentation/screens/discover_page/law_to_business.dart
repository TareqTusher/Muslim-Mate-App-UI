import 'package:flutter/material.dart';
import 'package:muslim_mate/core/common_components/common_title_and_description.dart';
import 'package:muslim_mate/core/router/app_routes.dart';
import 'package:muslim_mate/core/router/router.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/strings.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';

class LawToBusinesspage extends StatelessWidget {
  const LawToBusinesspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        leading: InkWell(
          hoverColor: AppColors.whiteColor,
          onTap: () {

            router.push(AppRoutesPath.lawDesription);
          },
          child: Icon(Icons.chevron_left, size: 30, color: AppColors.grey400),
        ),

        actions: [
          Icon(Icons.send, size: 24, color: AppColors.grey500),
          SizedBox(width: 8),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Icon(
              Icons.bookmark_add_outlined,
              size: 24,
              color: AppColors.grey400,
            ),
          ),
        ],
      ),
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Law',
                    style: TextStyles.fontText14Regular(AppColors.grey500),
                  ),
                  SizedBox(width: 8),
                  Icon(Icons.chevron_right, size: 20, color: AppColors.grey500),
                  Text(
                    'Business',
                    style: TextStyles.fontText14Regular(AppColors.grey500),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Text(
                "Usury Transactions",
                style: TextStyles.fontText20Medium(AppColors.blackColor),
              ),
              SizedBox(height: 12),
              Text(
                Strings.arabic,
                style: TextStyles.fontText16Medium(AppColors.blackColor),
              ),
              SizedBox(height: 8),
              Text(
                Strings.usury,
                style: TextStyles.fontText14Regular(AppColors.grey500),
              ),
              SizedBox(height: 12),
              CommonTitleAndDescription(
                title: Strings.definationOfUsury,
                description: Strings.usuryDesc,
              ),
              SizedBox(height: 8),
              CommonTitleAndDescription(
                title: Strings.legalBasicofUsury,
                description: Strings.basicDescription,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
