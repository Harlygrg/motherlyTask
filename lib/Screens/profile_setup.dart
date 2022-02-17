import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:motherly/constants/constat_colors.dart';
import 'package:motherly/constants/font_family.dart';
import 'package:motherly/widgets/buttons.dart';
import 'package:motherly/widgets/divider.dart';
import 'package:motherly/widgets/refact_text.dart';

class ProfileSetup extends StatelessWidget {
  const ProfileSetup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SizedBox(
       width: 375.w,
       height: MediaQuery.of(context).size.height,
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
          SizedBox(
              width: 375.w,
            height: 511.h,
            child: Image.asset("assets2/mapImage.png",fit: BoxFit.fill,),
          ),
           divider(height: 46.19.h),
           Padding(
             padding: EdgeInsets.only(left: 42.w),
             child: GestureDetector(
               onTap: (){},
               child: refactText(
                   text: "Confirm Location",
                   fontSize: 18.sp,
                   fontWeight: FontWeight.w700
               ),
             )
           ),
           divider(height: 25.27.h),
           Padding(
             padding: EdgeInsets.only(left: 42.w),
             child: refactText(
                 text: "Your location",
                 fontFamily: medium,
                 color: greyText,
                 fontSize: 14.sp,
                 fontWeight: FontWeight.w400
             ),
           ),
           divider(height: 5.48.h),
           Padding(
             padding: EdgeInsets.only(left: 42.w),
             child: refactText(
                   text: "Hariyana, India",
                   fontFamily: medium,
                   fontSize: 18.sp,
                   fontWeight: FontWeight.w400
               ),
           ),
           divider(height: 31.05.h),
           Align(
             alignment: Alignment.center,
             child: buttons(
                 width: 302.w,height: 48.h,
                 buttonText: "continue",
                 gradient: true,
                 onTap: (){},
                 dividerWidth: 0,
                 buttonColor:buttonBackgroundColor,
                 textColor: Colors.white
             ),
           )
           // buttons(
           //     buttonText: "continue", iconName: iconName, onTap: onTap)

         ],
       ),
     ),
    );
  }
}
