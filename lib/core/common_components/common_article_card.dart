import 'package:flutter/material.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';

class CommonArticleCard extends StatelessWidget {
  const CommonArticleCard({super.key, required this.image, required this.title, required this.writername, required this.onTap});
  final String image;
  final String title;
  final String writername;
  final VoidCallback onTap;
  

  @override
  Widget build(BuildContext context) {
    return InkWell(

      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
      
       
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
          
                borderRadius: BorderRadiusGeometry.circular(12),
                child: Image.asset(
                  image,
                  height: 80,
                  width: 80,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
          
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 290,
                        child: Text(
                         title,
                          style: TextStyles.fontText16Medium(AppColors.blackColor),
                          maxLines: 2,
                        ),
                      ),
          
                      Text(
                        writername,
                        style: TextStyles.fontText14Regular(AppColors.grey400),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.send, color: AppColors.grey400, size: 20),
                      SizedBox(width: 8),
                      Icon(
                        Icons.bookmark_add_outlined,
                        color: AppColors.grey400,
                        size: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
