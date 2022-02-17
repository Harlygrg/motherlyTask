import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:motherly/constants/const_images.dart';
import 'package:motherly/constants/constat_colors.dart';
import 'package:motherly/constants/font_family.dart';
import 'package:motherly/widgets/refact_text.dart';

firstCardSec({
  required String maintext,
  required String subText,
  required String backgroundImage,
  required Function() onTap,
}){
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: 331.35.w,
      height:384.h ,
      margin: EdgeInsets.only(left: 10.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(image: AssetImage(backgroundImage,),fit: BoxFit.fill)
      ),
      child: Stack(
        children: [
          Container(
            width: 331.35.w,
            height:384.h ,
            decoration: BoxDecoration(
              color: cardShadow,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Positioned(
            left: 19.w,
              bottom: 69.32.h,
              child: refactText(text:maintext,
                fontFamily: semiBold,
                fontSize: 28.sp,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              )
          ),
          Positioned(
              left: 19.w,
              bottom: 18.h,
              child: refactText(text: subText,
                fontFamily: medium,
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: cardColor,
              )
          ),
        ],
      ),
    ),
  );
}


