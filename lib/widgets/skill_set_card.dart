import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:motherly/constants/constat_colors.dart';
import 'package:motherly/constants/font_family.dart';
import 'package:motherly/widgets/refact_text.dart';

doulaSkillSetCard({
  required String image,
  required String text,
  required Function() onTap,
}){
  return GestureDetector(
    onTap: onTap,
    child: Container(
        width: 214.w,
        height:225.h ,
        margin: EdgeInsets.only(left: 10.w),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    image: DecorationImage(image: AssetImage(image,),fit: BoxFit.fill)
    ),
    child: Stack(
    children: [
      Positioned(top: 9.h,
          left: 13.w,
          child: refactText(text: text,color: whiteTextColor,
        fontFamily: semiBold,fontSize: 20,fontWeight: FontWeight.w700,
      ))
    ])
    ),
  );

}