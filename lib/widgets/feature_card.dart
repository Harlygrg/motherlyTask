import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:motherly/constants/const_images.dart';
import 'package:motherly/constants/constat_colors.dart';
import 'package:motherly/constants/font_family.dart';
import 'package:motherly/widgets/divider.dart';
import 'package:motherly/widgets/refact_text.dart';

    featureCard({
      required String image,
      required String title,
      required String main,
      required Function() onTap,
      required String description}){
      return GestureDetector(
        onTap: onTap,
        child: Container(
          width: 265.w,
          height:263.h ,
          margin: EdgeInsets.only(left: 10.w),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.sp),
             // image: DecorationImage(image: AssetImage(featureImage,),fit: BoxFit.values[he]),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 265.w,height: 183.49.h,
              child: Image.asset(image,fit: BoxFit.fill,),),
              divider(height: 11.h),
              Padding(
                padding:  EdgeInsets.only(left: 11.w),
                child: RichText(text: TextSpan(
                    children: [
                      TextSpan(
                          text: "$title \n",
                          style: TextStyle(
                            fontFamily: medium,fontWeight: FontWeight.w500,
                                  fontSize:12.sp,color: exploreFeaturePink
                          )
                      ),
                      TextSpan(
                          text:"$main \n",
                          style: TextStyle(
                            fontSize: 16.sp,
                                fontWeight: FontWeight.w700, color: cardTextBlack,fontFamily: semiBold,height: 2.h,
                          )
                      ),
                      TextSpan(
                          text:description,
                          style: TextStyle(
                            fontFamily: medium,fontSize:12.sp,
                            color: offerTxtGrey,fontWeight: FontWeight.w500
                          )
                      ),
                    ]
                )),
              )

            ],
          ),
        ),
      );
    }