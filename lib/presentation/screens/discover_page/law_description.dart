import 'package:flutter/material.dart';
import 'package:muslim_mate/core/common_components/common_header_section.dart';
import 'package:muslim_mate/core/router/app_routes.dart';
import 'package:muslim_mate/core/router/router.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';

class LawDescription extends StatelessWidget {
  const LawDescription({
    super.key,
    required this.text,
    required this.icons,
    required this.subTitleText,
  });

  final String text, subTitleText;
  final IconData icons;

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
          leading: InkWell(
            onTap: () {
              router.pop();
            },
            child: Icon(Icons.chevron_left, size: 30, color: AppColors.grey400),
          ),
        ),
        backgroundColor: AppColors.whiteColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
      
                  onTap: () {
                    router.push(AppRoutesPath.lawTitle);
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(icons, size: 30, color: AppColors.grey500),
                      SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            text,
                            style: TextStyles.fontText14Medium(
                              AppColors.blackColor,
                            ),
                          ),
                          Text(
                            subTitleText,
                            style: TextStyles.fontText14Regular(AppColors.grey500),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12),
                CommonHeaderContainerSection(onTap: () {}),
                SizedBox(height: 12),
                ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical:  12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(titleText[index]),
                      
                          Wrap(
                            children: [
                      Image.asset("assets/images/send.png",height: 18,width: 18,),
                              SizedBox(width: 12),
                              Icon(
                                Icons.bookmark_rounded,
                                size: 24,
                                color: AppColors.grey400,
                              ),
                            ],             
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
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
