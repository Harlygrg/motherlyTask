import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:motherly/constants/const_images.dart';
import 'package:motherly/constants/constat_colors.dart';
import 'package:motherly/controllers/navigation_controller.dart';
import 'package:motherly/widgets/divider.dart';
import 'package:motherly/widgets/buttons.dart';
import 'package:motherly/widgets/icons.dart';
import 'package:motherly/widgets/refact_text.dart';



class FindDoulas extends StatelessWidget {
  NavigationController _controller =Get.find();

   FindDoulas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width:375.w,
        height: 812.h,
        decoration:const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xffF88390),Color(0xffF16B94)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
            )
        ),
        child: Column(
          children: [
              divider(height:81.h ),
            SizedBox(
              width:375.w ,
              height: 401.46.h,
              child: Stack(
                //clipBehavior: Clip.none,
                children: [
                  Positioned(
                    left:119.6.w,
                    top: 130.h ,
                    child: SizedBox(
                      width: 143.44.w,
                      height: 250.h,
                      child: Image.asset(
                        pregnent,fit: BoxFit.contain,),
                    ),
                  ),
                  SizedBox(
                    width:375.w,
                    height: 401.46.h,
                    child:Image.asset(plantLeavesImage,fit: BoxFit.fill,),
                  ),

                ],
              ),
            ),
            divider(height:38.54.h, ),
            refactText(
                text: "Hello, nice to meet you",
                fontFamily: "fonts/GeneralSans-Medium.otf",
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: whiteTextColor,
            ),
            divider(height:7.h, ),
            refactText(
              text: "Find Doulas Around",
              fontFamily: "fonts/GeneralSans-Semibold.otf",
              fontSize: 25.sp,
              fontWeight: FontWeight.w700,
              color: whiteTextColor,
            ),
            divider(height:55.16.h, ),
            buttons(
                width: 302.w,height: 48.h,
              dividerWidth: 15.w,
              buttonText: "Use current location",
                icon: SvgPicture.asset(mapIcon,color: iconColor,),
              onTap: (){
                _controller.buttonOnClickToProfileSetup();
              }
            ),
            divider(height:15.8.h, ),
           //searchTextFormFieldFirstPage(hintText: "Search your location",labelColor: homTextBlack)
            buttons(
                width: 302.w,height: 48.h,
                dividerWidth: 15.w,
              buttonText: "Search your location",
              icon: refactIcons(picture: searchIcon,height:15.h,width:15.w, ),
              //SvgPicture.asset(searchIcon,color: iconColor,h),
              onTap:
                  (){
                  _controller.buttonOnClickToProfileSetup();
                  }
              //controller.buttonOnClick(),
            ),

          ],
        ),
      ),
    );
  }
}
