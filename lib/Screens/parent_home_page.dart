import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:motherly/constants/const_images.dart';
import 'package:motherly/constants/constat_colors.dart';
import 'package:motherly/constants/font_family.dart';
import 'package:motherly/controllers/home_controller.dart';
import 'package:motherly/widgets/aligment_refact.dart';
import 'package:motherly/widgets/buttons.dart';
import 'package:motherly/widgets/consut_book_list.dart';
import 'package:motherly/widgets/doula_image_list.dart';
import 'package:motherly/widgets/features_list.dart';
import 'package:motherly/widgets/divider.dart';
import 'package:motherly/widgets/feature_card.dart';
import 'package:motherly/widgets/lifestyle_blog_etc_list.dart';
import 'package:motherly/widgets/new_widgets.dart';
import 'package:motherly/widgets/share_doubts_card.dart';
import 'package:motherly/widgets/share_doubts_list.dart';
import 'package:motherly/widgets/skill_set_list.dart';
import 'package:motherly/widgets/home_1st_scroll.dart';
import 'package:motherly/widgets/icons.dart';
import 'package:motherly/widgets/offer_card.dart';
import 'package:motherly/widgets/refact_text.dart';
import 'package:motherly/widgets/skill_set_card.dart';
import 'package:motherly/widgets/text_form_field.dart';


class ParentHomePage extends StatelessWidget {
  const ParentHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return SingleChildScrollView(
          child: SizedBox(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 19.w),
                  child: SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          divider(height: 92.1.h),

                        SizedBox(
                          width: 334.w,
                          //height: 53.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 188.w,
                                child: refactText(
                                    text: "Good Morning, Sarah",
                                  fontFamily: semiBold,
                                  fontSize: 25.sp,
                                  color: homeTextColor,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              refactIcons(picture: burgerIcon,color: iconBlack)

                            ],
                          ),
                        ),
                        divider(height: 19.4.h),
                        Form(
                            child:
                            searchTextFormField(
                              hintText: "Search Home"
                            )
                        ),
                        divider(height: 37.8.h),
                       consultBookList(),
                        divider(height: 64.h),
                        refactText(text: "In the Spotlight",fontSize: 18.sp,
                          fontWeight: FontWeight.w700, color: homeTextColor,fontFamily: semiBold,
                        ),
                        refactText(text: "Explore offers and recent features",fontSize: 13.sp,
                          color: homeTextGreay,fontFamily: semiBold,
                        ),
                        divider(height: 10.h),
                        offerCard(),
                        divider(height: 62.6.h),
                        refactText(text: "Explore Features",fontSize: 18.sp,
                          fontWeight: FontWeight.w700, color: homeTextColor,fontFamily: semiBold,
                        ),
                        divider(height: 23.h),
                        featureList(),
                        divider(height: 63.h),
                        refactText(
                          text: "Doula Skill Set",
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                          color: homeTextColor,fontFamily: semiBold,
                        ),
                        divider(height: 27.h),
                       skillSetList(),
                        divider(height: 59.h),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 377.w,
                  height: 841.h,
                  child: DecoratedBox(decoration: BoxDecoration(
                    color: lightPinkBackground,
                  ),child: Column(
                    children: [
                      divider(height: 55.9.h),
                      centerAlign(
                        refactText(text: "Join Our Community!",
                            color: homeTextColor,
                            fontFamily: bold,
                            fontWeight: FontWeight.w900,
                            fontSize: 25.sp
                        ),),
                      divider(height: 7.1.h),
                      centerAlign(
                        refactText(text: "Share your doubts and find solutions\n"
                            "from India's top doctors.",
                          color: homeTextGreay,
                          fontFamily: medium,
                          fontSize: 14.sp,
                          align: TextAlign.center,),
                      ),
                      divider(height: 30.4.h),
                      centerAlign(buttons(
                          width: 302.w,height: 48.h,
                          buttonText: "Join Now,", onTap: (){},
                          dividerWidth: 0,gradient: true),
                      ),
                      divider(height: 47.6.h),

                      //newWidget(),
                      lifestyleBlogEtcList(),
                      divider(height: 23.h),
                      SizedBox(width: 339.w,
                      child:Divider(color: greyLine,) ,),
                      divider(height: 23.h),
                      SizedBox(
                        width: 343.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            refactText(
                              text: "Share Doubts",
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700,
                              color: homeTextColor,fontFamily: semiBold,
                            ),
                            refactText(
                              text: "View All",
                                fontFamily: medium,fontWeight: FontWeight.w500,
                                fontSize:12.sp,color: exploreFeaturePink
                            ),

                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(padding: EdgeInsets.only(left: 19.w),
                        child: refactText(
                          text: "Find Solutions from India's top doctors.",
                          fontFamily: medium,fontSize:12.sp,
                          color: offerTxtGrey,fontWeight: FontWeight.w500,
                        ),),
                      ),
                      divider(height: 22.6.h),
                      shareDoubtsListView(),
                    ],
                  ),
                  ),
                ),
        divider(height: 48.h),
                refactText(
                  text: "Meet Our Doulas",
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                  color: exploreFeaturePink,fontFamily: semiBold,
                ),
                divider(height: 19.h),
                doulaImageList(),
                divider(height: 86.h),
                SizedBox(
                  width: 78.w,
                  height: 78.w,
                  child: Image.asset(logo,fit: BoxFit.contain,),
                ),
                refactText(
                  text: "Mothrly",
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                  color: exploreFeaturePink,fontFamily: semiBold,
                ),
                divider(height: 118.h),
              ],
            ),
          ),
        );
      }
    );
  }
}
