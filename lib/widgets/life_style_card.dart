import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:motherly/constants/const_images.dart';
import 'package:motherly/constants/constat_colors.dart';
import 'package:motherly/constants/font_family.dart';
import 'package:motherly/widgets/buttons.dart';
import 'package:motherly/widgets/divider.dart';
import 'package:motherly/widgets/icons.dart';
import 'package:motherly/widgets/refact_text.dart';

lifeStyleCard({
  required String image,
  required String title,
  required String main,
  required String likes,
  required String time,
  required String description}){
  return Container(
    width: 295.w,
    height:246.h ,
    margin: EdgeInsets.only(left: 10.w),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(4.sp),

    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(text: TextSpan(
            children: [
              TextSpan(
                  text: "$title\n",
                  style: TextStyle(
                      fontFamily: medium,fontWeight: FontWeight.w500,
                      fontSize:12.sp,color: exploreFeaturePink
                  )
              ),
              TextSpan(
                  text:"$main\n",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    color: cardTextBlack,fontFamily: semiBold,height: 1.5.h
                  )
              ),
              TextSpan(
                  text:description,
                  style: TextStyle(
                      fontFamily: medium,fontSize:12.sp,
                      color: offerTxtGrey,fontWeight: FontWeight.w500,
                  )
              ),
            ]
        )),
        divider(height:7.h ),
        Expanded(
          child: SizedBox(width: 294.w,height: 184.h,
            child: Stack(
              children: [
                  SizedBox(
                      width: 294.w,height: 184.h,
                    child:ClipRRect(borderRadius: BorderRadius.circular(10.sp),
                        child: Image.asset(image,fit: BoxFit.fill,)) ,

                  ),
                Container(
                  width: 294.w,
                  height:184.h ,
                  decoration: BoxDecoration(
                    color: cardShadow,
                    borderRadius: BorderRadius.circular(10.sp),
                    //image: DecorationImage(image: AssetImage(image),fit: BoxFit.fill)
                  ),
                ),
                Positioned(
                  left: 16.w,bottom: 19.13.h,
                    child: SizedBox(
                      width: 109.w,height: 14.87.h,
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        refactIcons(picture: thumpsUpIcon,height: 14.h,color: whiteTextColor,),
                          refactText(text: likes,fontSize: 10.sp,fontFamily: regular,color: whiteTextColor),
                          Icon(
                            Icons.schedule_outlined,color: whiteTextColor,size: 15.sp,
                          ),
                          refactText(text: time,fontSize: 10.sp,fontFamily: regular,color: whiteTextColor),

                        ],
                      )
                )),
                Positioned(
                  right: 11.w,
                    bottom: 14.h,
                    child: buttons(
                        buttonText: "View", width: 79.w,
                        height: 27.h, onTap: (){}, dividerWidth: 0,
                        gradient: true,textColor: whiteTextColor)
                )
              ],
            )
            //Image.asset(image,fit: BoxFit.fill,),
          ),
        ),
      ],
    ),
  );
}