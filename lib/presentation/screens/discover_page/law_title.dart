import 'package:flutter/material.dart';
import 'package:muslim_mate/core/router/app_routes.dart';
import 'package:muslim_mate/core/router/router.dart';
import 'package:muslim_mate/core/styles/colors.dart';

class LawTitle extends StatelessWidget {
  const LawTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.whiteColor,
      
       leading: InkWell(
          onTap: () {
            router.push(AppRoutesPath.lawTab); 
          },
          child: Icon(Icons.chevron_left, size: 30, color: AppColors.grey400),
        )
      
      ),
      backgroundColor: AppColors.whiteColor,
    );
  }
}
