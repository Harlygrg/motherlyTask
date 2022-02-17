import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:motherly/constants/const_images.dart';
import 'package:motherly/constants/constat_colors.dart';
import 'package:motherly/constants/font_family.dart';
import 'package:motherly/widgets/divider.dart';
import 'package:motherly/widgets/refact_text.dart';

  elevatedButton({required String text,required Function() onPressed,Color buttonColor =Colors.white,Color textColor=Colors.black}){
  return  SizedBox(
    width: 79.w,
    child: ElevatedButton(
      onPressed: onPressed, child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(text,style: TextStyle(fontSize: 15.sp,color: textColor),),
    ),
      style: ElevatedButton.styleFrom(
          primary: buttonColor,
          elevation: 10,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),

    ),
  );
}

      buttons({
  required String buttonText,
        Color textColor = Colors.black,
        Color buttonColor =Colors.white,
        required double width,
        required double height,
        required Function() onTap,
        bool gradient=false,
      required  double dividerWidth,
        Widget? icon,
}){
          return  GestureDetector(
            onTap:onTap,
            child: Container(
              width: width,height: height,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                gradient:gradient==true? const LinearGradient(
                    colors: [
                      buttonColorPinkTop,buttonColorPinkBottom
                    ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,

                ):null,
                borderRadius: BorderRadius.circular(24),
                color: buttonColor,
              ),
              child: SizedBox(
                width: 178.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      child:icon
                    ),
                    divider(width: dividerWidth),
                    refactText(
                      text: buttonText ,
                      fontFamily:semiBold,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: textColor,
                    ),

                  ],
                ),
              ),

            ),
          );
        }



//         textButton({
//           required String text
//
// }){
//     return TextButton(
//         onPressed: (){}, child: refactText(text: text, fontFamily: fontFamily));
//         }