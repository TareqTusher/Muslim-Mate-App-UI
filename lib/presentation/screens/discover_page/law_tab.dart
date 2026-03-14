import 'package:flutter/material.dart';
import 'package:muslim_mate/core/common_components/common_title_and_icons.dart';
import 'package:muslim_mate/core/router/app_routes.dart';
import 'package:muslim_mate/core/router/router.dart';
import 'package:muslim_mate/core/styles/colors.dart';

class LawTab extends StatelessWidget {
  const LawTab({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> text = [
      "Business",
      "Mumalah",
      "Zakat,Infaq,Sadkah",
      "Politics",
    ];
    List<IconData> icons = [
      Icons.business,
      Icons.message,
      Icons.copy,
      Icons.account_balance,
    ];
List<String>laws=[
  "10Law",
    "30Law",

  "20Law",
  "70Law",

];
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              ListView.separated(
                shrinkWrap: true,

                itemBuilder: (context, index) {
                  return SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: CommonTitleAndIcons(
                        icons: icons[index],
                        titleText: text[index],
                        subTitleText: laws[index],
                        onTap: () {
                          router.push(
                            AppRoutesPath.lawDesription,
                            extra: {'title': text[index], 'icon': icons[index],'laws':laws[index]},
                          );
                        },
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider();
                },
                itemCount: text.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
