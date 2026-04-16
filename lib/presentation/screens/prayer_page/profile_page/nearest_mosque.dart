import 'package:flutter/material.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/strings.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';

class NearestMosque extends StatelessWidget {
  const NearestMosque({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        appBar: AppBar(
          backgroundColor: AppColors.whiteColor,
          leading: InkWell(
            onTap: () {},
            child: Icon(Icons.chevron_left, size: 24, color: AppColors.grey600),
          ),
          title: Text(
            "Nearest Mosque",
            style: TextStyles.fontText16Medium(AppColors.blackColor),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 5,
                      child: TextFormField(
                        decoration: InputDecoration(
                          fillColor: AppColors.grey100,
                          hintText: Strings.search,
                          prefixIconColor: AppColors.grey500,
                          filled: true,
                          prefixIcon: Icon(
                            Icons.search,
                            size: 20,
                            color: AppColors.grey400,
                          ),
                          hintStyle: TextStyles.fontText14Regular(AppColors.grey500),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
SizedBox(width: 12,),
                    Expanded(
                    flex: 1,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: AppColors.grey300,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.photo, color: AppColors.grey500),
                      ),
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
