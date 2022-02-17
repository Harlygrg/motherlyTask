import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:motherly/constants/constat_colors.dart';
import 'package:motherly/constants/font_family.dart';
import 'package:motherly/widgets/divider.dart';
import 'package:motherly/widgets/refact_text.dart';

shareDoubts({
              required String image,
              required String title,
              required String time,
              required String ageAndPlace,
              required String question,
              required String answer,
}){
  return Card(
    elevation: 5,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(13.sp),
    ),
    child:SizedBox(
      width: 216.35.w,height: 196.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:  EdgeInsets.only(top: 18.75.h,left: 15.w,right: 15.w),
            child: SizedBox(
              height: 28.h,
              width: 216.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(image,),
                      radius: 14.sp,
                    ),
                  Text.rich(
                      TextSpan(
                    text: "$title    ",
                    style: TextStyle(
                      fontFamily: medium,
                      fontSize: 12.sp,
                      color: cardTextBlack,
                    ),
                        children: [
                          TextSpan(
                            text: "$time\n",
                            style: TextStyle(
                              fontFamily: medium,
                              fontSize: 10.sp,
                              color: greyText,

                            ),
                          ),
                          TextSpan(
                            text: "$ageAndPlace\n",
                            style: TextStyle(
                              fontFamily: medium,
                              fontSize: 10.sp,
                              color: greyText,
                              height: 1.h,

                            ),
                          ),
                        ]
                  )
                  )
                ],
              )
              ,
            ),
          ),
        divider(height: 32.58.h),
        Padding(
          padding:  EdgeInsets.only(left: 40.35.w),
          child: SizedBox(
            width: 174.58.w,height: 48.2.h,
            child: refactText(text: question,fontFamily: medium,
                color: cardTextBlack,
                fontWeight: FontWeight.w500,fontSize: 14.sp),
          ),
        ),
        divider(height: 39.55.h),
        Padding(
            padding: EdgeInsets.only(left: 40.35.w),
          child: refactText(text: answer,fontFamily: medium,
              color: blueCardText,
              fontWeight: FontWeight.w500,fontSize: 12.sp),
        ),

      ],),
    ),
  );
}