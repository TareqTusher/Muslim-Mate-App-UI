import 'package:flutter/material.dart';
import 'package:muslim_mate/core/styles/colors.dart';

class LawTab extends StatelessWidget {
  const LawTab({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.whiteColor,
     body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ListView.separated(itemBuilder: (context,index){


            }, separatorBuilder: (context,index){

              return Divider();
            }, itemCount: 5)
          ],
        ),
      ),
     ),
    );
  }
}