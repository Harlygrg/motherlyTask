import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:motherly/constants/const_images.dart';
import 'package:motherly/constants/constat_colors.dart';
import 'package:motherly/constants/font_family.dart';
import 'package:motherly/widgets/divider.dart';
import 'package:motherly/widgets/icons.dart';

textFormField({
  required String hintText,
  Widget ?icon,

  String? Function (String?)? validator,
  TextEditingController? controller,
  bool obscuretext =false,
  AutovalidateMode? autovalidateMode,
  TextInputType? keyboardType,
  Color labelTextColor=formHintText,
}){
  return SizedBox(
    width: 303.w,
    height: 46.h,
    child: TextFormField(
      decoration: InputDecoration(
        suffixIcon: icon,
        labelStyle: TextStyle(
          fontFamily: semiBold,fontSize: 14.sp,color:labelTextColor,
        ),
        labelText:hintText,
        fillColor: Colors.white,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: Colors.blue,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: formGreyBorder,
            width: 1.0,
          ),
        ),
      ),
      validator: validator,
      controller: controller,
      obscureText: obscuretext,
      autovalidateMode:autovalidateMode ,
      keyboardType: keyboardType,
    ),
  );
}

searchTextFormField({
  required String hintText,
  Widget ?icon,
  String? Function (String?)? validator,
  TextEditingController? controller,
  bool obscuretext =false,
  AutovalidateMode? autovalidateMode,
  TextInputType? keyboardType,
  Color labelColor=hintTextColor,
}){
  return Container(
    width: 339.w,
    height: 32.h,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(24),
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 6.0, // soften the shadow
          spreadRadius: .01, //extend the shadow
          offset: Offset(
            0.0, // Move to right 10  horizontally
            3.0, // Move to bottom 10 Vertically
          ),
        )
      ],
    ),
    child: TextFormField(
      decoration: InputDecoration(
        prefixIcon: SizedBox(
          width: 35.w,
          child: Row(
            children: [
              divider(width: 19.6.w),
              refactIcons(picture: searchIcon,width: 15.w,height: 15.w),
            ],
          ),
        ),
        labelStyle: TextStyle(
            fontFamily: semiBold,fontSize: 14.sp,color:labelColor
        ),
        labelText:hintText,
        fillColor: Colors.white,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24.0),
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24.0),
          borderSide: BorderSide(
            color: Colors.white,
            width: 1.0,
          ),
        ),
      ),
      validator: validator,
      controller: controller,
      obscureText: obscuretext,
      autovalidateMode:autovalidateMode ,
      keyboardType: keyboardType,
    ),
  );
}




searchTextFormFieldFirstPage({
  required String hintText,
  Widget ?icon,
  String? Function (String?)? validator,
  TextEditingController? controller,
  bool obscuretext =false,
  AutovalidateMode? autovalidateMode,
  TextInputType? keyboardType,
  Color labelColor=hintTextColor,
}){
  return Container(
    width: 302.w,
    height: 48.h,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(24),
      boxShadow:const [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 6.0, // soften the shadow
          spreadRadius: .01, //extend the shadow
          offset: Offset(
            0.0, // Move to right 10  horizontally
            3.0, // Move to bottom 10 Vertically
          ),
        )
      ],
    ),
    child: TextFormField(
      decoration: InputDecoration(
        prefixIcon: Container(
          width: 40.w,
          child: Row(
            children: [
              divider(width: 26.6.w),
              refactIcons(picture: searchIcon,width: 15.w,height: 15.w),
            ],
          ),
        ),
        hintStyle: TextStyle(
            fontFamily: semiBold,fontSize: 14.sp,color:labelColor
        ),
        hintText:hintText,
        fillColor: Colors.white,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24.0),
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24.0),
          borderSide: BorderSide(
            color: Colors.white,
            width: 1.0,
          ),
        ),
      ),
      validator: validator,
      controller: controller,
      obscureText: obscuretext,
      autovalidateMode:autovalidateMode ,
      keyboardType: keyboardType,
    ),
  );
}