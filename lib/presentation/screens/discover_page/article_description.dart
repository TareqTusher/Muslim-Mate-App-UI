import 'package:flutter/material.dart';
import 'package:muslim_mate/core/router/app_routes.dart';
import 'package:muslim_mate/core/router/router.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/strings.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';

class ArticleDescription extends StatelessWidget {
  const ArticleDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        appBar: AppBar(
          backgroundColor: AppColors.whiteColor,
          leading: InkWell(
            onTap: (){
      
              router.push(AppRoutesPath.articleTab);
            },
            child: Icon(Icons.arrow_back)),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      router.push(AppRoutesPath.familyPage);
                    },
      
                    child: Icon(Icons.send, color: AppColors.grey400, size: 20),
                  ),
                  SizedBox(width: 8),
                  InkWell(
                    onTap: () {},
      
                    child: Icon(
                      Icons.bookmark_add_outlined,
                      color: AppColors.grey400,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Strings.article,
                  style: TextStyles.fontText14Regular(AppColors.grey400),
                ),
                SizedBox(height: 8),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.7,
                  child: Text(
                    "Prepare Yourself to welcome Ramadhan",
                    style: TextStyles.fontText20Medium(AppColors.blackColor),
                    maxLines: 2,
                  ),
                ),
                SizedBox(height: 12),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    "assets/images/ramadan3.jpg",
                    height: 200,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
      
                SizedBox(height: 12),
                Text(
                  'Ramadan Doa ',
                  style: TextStyles.fontText14Medium(AppColors.blackColor),
                ),
                SizedBox(height: 12),
                Text(Strings.ramdanDoa),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
