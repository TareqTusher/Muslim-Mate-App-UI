import 'package:flutter/material.dart';
import 'package:muslim_mate/core/router/app_routes.dart';
import 'package:muslim_mate/core/router/router.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/strings.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';

class DuaTab extends StatelessWidget {
  const DuaTab({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> titleText = [
      Strings.family,
      Strings.business,
      Strings.travel,
      Strings.dhikr,
    ];
    List<IconData> icons = [
      Icons.group,
      Icons.lock,
      Icons.directions_car_outlined,
      Icons.collections_bookmark_outlined,
    ];
    return SafeArea (
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: InkWell(
                        focusColor: AppColors.whiteColor,
                        hoverColor: AppColors.whiteColor,
                        highlightColor: AppColors.whiteColor,
                        splashColor: AppColors.whiteColor,
      
                        onTap: () {
                          router.push(AppRoutesPath.familyDescription);
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              icons[index],
                              size: 30,
                              color: AppColors.grey400,
                            ),
                            SizedBox(width: 8),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  titleText[index],
                                  style: TextStyles.fontText14SemiBold(
                                    AppColors.blackColor,
                                  ),
                                ),
                                Text(
                                  "1 Dua",
                                  style: TextStyles.fontText14Regular(
                                    AppColors.grey400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider();
                  },
                  itemCount: icons.length,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
 