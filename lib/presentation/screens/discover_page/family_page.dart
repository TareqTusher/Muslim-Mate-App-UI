import 'package:flutter/material.dart';
import 'package:muslim_mate/core/common_components/common_header_section.dart';
import 'package:muslim_mate/core/router/app_routes.dart';
import 'package:muslim_mate/core/router/router.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/strings.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String>text=[
      Strings.sakinahFamily,
      Strings.bothParents,
      Strings.broomPlayer
    ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        appBar: AppBar(
          backgroundColor: AppColors.whiteColor,
      
          leading: InkWell(
            onTap: () {
              router.push(AppRoutesPath.articleDesc);
            },
            child: Icon(Icons.arrow_back)),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Family",
                style: TextStyles.fontText16Medium(AppColors.blackColor),
              ),
              Text(
                "3 Dua",
                style: TextStyles.fontText14Regular(AppColors.grey600),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                CommonHeaderContainerSection(onTap: () {}),
                SizedBox(height: 16),
      
                ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            text[index],
                            style: TextStyles.fontText14Regular(
                              AppColors.grey600,
                            ),
                          ),
                      
                          Wrap(
                            children: [
                              InkWell(
                                onTap: () {},
                      
                                child: Icon(
                                  Icons.send,
                                  color: AppColors.grey400,
                                  size: 20,
                                ),
                              ),
                              SizedBox(width: 8),
                              InkWell(
                                onTap: () {},
                      
                                child: Icon(
                                  Icons.bookmark_rounded,
                                  color: AppColors.grey400,
                                  size: 20,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(color: AppColors.grey300,height: 0.5,);
                  },
                  itemCount: 3,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
