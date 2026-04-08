import 'package:flutter/material.dart';
import 'package:muslim_mate/core/common_components/common_article_card.dart';
import 'package:muslim_mate/core/router/app_routes.dart';
import 'package:muslim_mate/core/router/router.dart';
import 'package:muslim_mate/core/styles/colors.dart';

class ArticleTabContent extends StatelessWidget {
  const ArticleTabContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListView.separated(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return CommonArticleCard(
                    image: 'assets/images/ramadan3.jpg',
                    title: 'Prepare Yourself to Welcome Ramadhan',
                    writername: 'Bessie Copper',
                    onTap: () {
                      router.push(AppRoutesPath.articleDesc);
                    },
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(color: AppColors.grey300, height: 0.5);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
