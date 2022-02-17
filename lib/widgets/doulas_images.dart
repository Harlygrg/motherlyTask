import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

doulaImages(String image){
  return Card(
    elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13.sp)),
    child: SizedBox(
      width: 78.95.w,height: 73.95,
      child: ClipRRect(
        child: Image.asset(image,fit: BoxFit.fill,),
        borderRadius: BorderRadius.circular(13.sp) ,
      ),
    ),
  );
}