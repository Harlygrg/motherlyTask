import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:motherly/constants/const_images.dart';
import 'package:motherly/constants/constat_colors.dart';
import 'package:motherly/constants/font_family.dart';
import 'package:motherly/widgets/refact_text.dart';

offerCard(){
  return Container(
    width: 321.77.w,
    height: 129.8.h,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13.sp),
        border: Border.all(color: borderGrey,)
    ),
    child: Stack(
      children: [
        Positioned(left: 20.w,top: 21.h,
            child:  RichText(text: TextSpan(
                children: [
                  TextSpan(
                      text: "Flat\n",
                      style: TextStyle(
                        fontFamily: semiBold,fontSize:13.sp,
                        color: offerTextBlue,fontWeight: FontWeight.w700,
                      )
                  ),
                  TextSpan(
                      text: "15% OFF\n\n",
                      style: TextStyle(
                        fontFamily: semiBold,fontSize:23.sp,
                        color: offerTextBlue,fontWeight: FontWeight.w700,
                      )
                  ),
                  TextSpan(
                      text: "ON YOUR\nFIRST DOCTOR\nCONSULTATION",
                      style: TextStyle(
                        fontFamily: medium,fontSize:10.sp,
                        color: offerTxtGrey,
                      )
                  ),
                ]
            ))
        ),
        Positioned(
            left: 100.54.w,
            child: SizedBox(
              width: 136.34.w,height: 127.62.h,
              child: Image.asset(offerGirlPic,fit: BoxFit.contain,),
            )
        ),
        Positioned(right: 0.w,
          child: Container(
            alignment: Alignment.center,
            width: 57.81.w,height: 129.8.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(13.sp),
                  topRight: Radius.circular(13.sp),
                ),
                gradient:const LinearGradient(colors: [topBlue,bottomBlue],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter
                )
            ),
            child: RotatedBox(quarterTurns: 1,
                child: refactText(text: "FIRST: FIR15",
                    color: whiteTextColor,fontFamily: semiBold,fontSize: 12.sp,fontWeight: FontWeight.w700)),
          ),
        )
      ],
    ),
  );
}