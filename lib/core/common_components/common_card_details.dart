import 'package:flutter/material.dart';
import 'package:muslim_mate/core/common_components/custom_elevated_button.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/strings.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';

class CommonCardDetails extends StatelessWidget {
  const CommonCardDetails({super.key});

  @override
  Widget build(BuildContext context) {
    List<String>images=[
"assets/images/mosjid.png",
"assets/images/mosjid2.png",
"assets/images/ramadan3.jpg"
    ];
       List<String>title=[
"Mesjid Al Jebbar ",
"Mesjid Al Kamil ",
"Mesjid Al Imam ",
    ];
    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (context,index){
      return Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: AppColors.primary400,
              borderRadius: BorderRadius.circular(16)
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                
                images[index],fit: BoxFit.cover,),
            ),),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(title[index],style: TextStyles.fontText20Medium(AppColors.blackColor),),
              SizedBox(
                width: 230,
                child: Text(Strings.mosjidLocation,style: TextStyles.fontText14Regular(AppColors.grey600),maxLines: 1,overflow: TextOverflow.ellipsis,)),
                SizedBox(height: 12,),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.grey100,
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text("2.4km",style: TextStyles.fontText12Regular(AppColors.grey600),),
                  ),
                )
            ],),
            SizedBox(
              width: 120,
              child: CustomElevatedButton(text: Strings.direction, onTap: (){}, backgroundClr: AppColors.primary600,borderColor: AppColors.primary600,
              
              color: AppColors.whiteColor,icons: Icons.send_outlined,iconColor: AppColors.whiteColor,
              ),
            )
        ],
      );
    }, separatorBuilder: (context,index){
      return Divider();
    }, itemCount: images.length);
  }
}