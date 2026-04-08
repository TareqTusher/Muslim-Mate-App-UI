import 'package:flutter/material.dart';
import 'package:muslim_mate/core/common_components/common_article_list_tile.dart';
import 'package:muslim_mate/core/common_components/common_header_section.dart';
import 'package:muslim_mate/core/router/app_routes.dart';
import 'package:muslim_mate/core/router/router.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';

class LawTitle extends StatelessWidget {
  const LawTitle({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> titleText = [
      "Manners of Debt",
      "Usury Transactions",
      "Various Types of Halal Business",
      "Characteristics of Halal and Haram Investments",
    ];
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.whiteColor,
          title: InkWell(
      
            onTap: () {
              router.push(AppRoutesPath.lawToBusiness);
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Business",
                  style: TextStyles.fontText16SemiBold(AppColors.blackColor),
                ),
                Text("Law", style: TextStyles.fontText14Medium(AppColors.grey500)),
              ],
            ),
          ),
          leading: InkWell(
            onTap: () {
              router.push(AppRoutesPath.lawTab);
            },
            child: Icon(Icons.chevron_left, size: 30, color: AppColors.grey400),
          ),
        ),
        backgroundColor: AppColors.whiteColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                CommonHeaderContainerSection(onTap: () {}),
                SizedBox(height: 12),
      
                ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return CommonArticleListTile(text: titleText[index]);
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return Divider();
                  },
                  itemCount: titleText.length,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
