import 'package:flutter/material.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';

class CommonModalBottomSheet {
  
  static void show( { required BuildContext context,String? title, String?buttonText, required Widget children,IconData? icon,String? cancel,required VoidCallback onTap, VoidCallback ? titleOnTap,IconData?titleIcon, }) {
    
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
                titleIcon==null?
                Text(
                  title??"",
                  style: TextStyles.fontText16SemiBold(
                    AppColors.blackColor,
                  ),
                ):Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                  children: [

                   Text(
                  title??"",
                  style: TextStyles.fontText16SemiBold(
                    AppColors.blackColor,
                  ),
                ),
                InkWell(
                  
                  onTap:titleOnTap,
                  child: Icon(titleIcon,color: Colors.red,size: 24,))
                ],),
                SizedBox(height: 16),
                children,
   
                SizedBox(height: 20),
              
                cancel==null?
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: onTap,
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      backgroundColor: AppColors.primary600,
                    ),
                    child:icon==null? Text(
                      buttonText??"",
                      style: TextStyles.fontText14Medium(
                        AppColors.whiteColor,
                      ),
                    ):Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            Icon(icon,size: 20,color: AppColors.whiteColor,),
                            SizedBox(width: 8,),
                            Text(
                        buttonText??"",
                        style: TextStyles.fontText14Medium(
                          AppColors.whiteColor,
                        ),
                      )
                      ],),
                    ),
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
                        buttonText??"",
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
                        foregroundColor: AppColors.whiteColor,
                        shadowColor: AppColors.whiteColor,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: AppColors.primary600,width: 1),
                          borderRadius: BorderRadius.circular(30),
                          
                        ),
                        
                        backgroundColor: AppColors.whiteColor,
                      ),
                      child: Text(
                        cancel,
                        style: TextStyles.fontText14Medium(
                          AppColors.primary600,
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