import 'package:flutter/material.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';

class CommonModalBottomSheet {
  
  static void show( { required BuildContext context,String? title,buttonText, Widget? widget,IconData? icon,String? cancel}) {
    
    showModalBottomSheet(
      
      context: context,
      
      backgroundColor: Colors.transparent,
      isScrollControlled: false,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 20,
          ),
          child: Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 40,
                  height: 5,
                  margin: EdgeInsets.only(bottom: 16),
                  decoration: BoxDecoration(
                    color: AppColors.grey100,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Text(
                  title.toString(),
                  style: TextStyles.fontText16SemiBold(
                    AppColors.blackColor,
                  ),
                ),
                SizedBox(height: 16),
                widget!,
                // Row(
                //   children: [
                //     Expanded(
                //       child: DropdownButtonFormField(
                //         decoration: InputDecoration(
                //           filled: true,
                //           suffixIcon: Icon(Icons.expand_more),
                //           fillColor: AppColors.grey100,
                //           labelText: "Surah",
                //           border: OutlineInputBorder(
                //             borderRadius: BorderRadius.circular(12),
                //             borderSide: BorderSide.none,
                //           ),
                //         ),
                //         items: ["1. Surah"]
                //             .map((e) => DropdownMenuItem(
                //                   value: e,
                //                   child: Text(e),
                //                 ))
                //             .toList(),
                //         onChanged: (v) {},
                //       ),
                //     ),
                //     SizedBox(width: 10),
                //     Expanded(
                //       child: DropdownButtonFormField(
                //         decoration: InputDecoration(
                //           filled: true,
                //           fillColor: AppColors.grey100,
                //           labelText: "Ayah",
                //           suffixIcon: Icon(Icons.expand_more),
                //           border: OutlineInputBorder(
                //             borderSide: BorderSide.none,
                //             borderRadius: BorderRadius.circular(12),
                //           ),
                //         ),
                //         items: ["1", "2"]
                //             .map((e) => DropdownMenuItem(
                //                   value: e,
                //                   child: Text(e),
                //                 ))
                //             .toList(),
                //         onChanged: (v) {},
                //       ),
                //     ),
                //   ],
                // ),
                SizedBox(height: 20),
              
                cancel==null?
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      backgroundColor: AppColors.primary600,
                    ),
                    child:icon==null? Text(
                      buttonText,
                      style: TextStyles.fontText14Medium(
                        AppColors.whiteColor,
                      ),
                    ):Row(children: [
                          Icon(icon,size: 24,color: AppColors.whiteColor,),
                          SizedBox(width: 8,),
                          Text(
                      buttonText,
                      style: TextStyles.fontText14Medium(
                        AppColors.whiteColor,
                      ),
                    )
                    ],),
                  ),
                ):Row(children: [

                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        backgroundColor: AppColors.primary600,
                      ),
                      child: Text(
                        buttonText,
                        style: TextStyles.fontText14Medium(
                          AppColors.whiteColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16,),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        backgroundColor: AppColors.primary600,
                      ),
                      child: Text(
                        cancel,
                        style: TextStyles.fontText14Medium(
                          AppColors.whiteColor,
                        ),
                      ),
                    ),
                  )
                ],),
              ],
            ),
          ),
        );
      },
    );
  }
}