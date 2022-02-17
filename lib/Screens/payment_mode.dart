import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:motherly/constants/const_images.dart';
import 'package:motherly/constants/constat_colors.dart';
import 'package:motherly/constants/font_family.dart';
import 'package:motherly/widgets/buttons.dart';
import 'package:motherly/widgets/divider.dart';
import 'package:motherly/widgets/icons.dart';
import 'package:motherly/widgets/refact_text.dart';
import 'package:motherly/widgets/text_form_field.dart';
class PaymentMode extends StatelessWidget {
  const PaymentMode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.only(left: 37.w),
        child: SingleChildScrollView(
          child: SizedBox(
            width: 338.w,
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                divider(height: 89.1.h),
                IconButton(
                    onPressed: (){},
                    icon: SvgPicture.asset(
                      backArroIcon,
                      color: Colors.black,

                    )
                ),
                divider(height: 59.9.h),
                refactText(
                    text: "Create your Account",
                  fontWeight: FontWeight.w700,
                  fontSize: 23
                ),
                divider(height: 15.2.h),
                SizedBox(
                  width: 302.w,
                  height: 44.h,
                  child: RichText(
                      text: TextSpan(
                        text: "To confirm your account, enter the "
                            "4-digit code sent to ",
                        style: TextStyle(
                            fontFamily: medium,
                            color: greyText,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400
                        ),
                        children: [
                          TextSpan(
                            text: "+ 91-9876543211",
                            style: TextStyle(
                              fontFamily: medium,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                              color: Colors.black
                            )
                          )
                        ]
                      )
                  )

                  ),
                divider(height: 47.8.h),
                Form(
                    child: SizedBox(
                      width: 303.w,
                      height: 232.h,
                      child: Column(
                        children: [
                            textFormField(hintText: "Full Name"),
                          divider(height: 15.9.h),
                          textFormField(hintText: "Email Address"),
                          divider(height: 15.9.h),
                          textFormField(hintText: "Enter Password",
                              icon: SizedBox(
                                width: 17.w,
                                height: 17.h,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    refactIcons(
                                      picture: crossEyeIcon,
                                      color:formHintText,
                                      width: 17.w,
                                      height: 17.h,

                                    ),
                                    divider(width: 14.6.w),
                                  ],
                                ),
                              ),

                          ),
                          divider(height: 15.9.h),
                          textFormField(hintText: "Confirm Password"),
                        ],
                      ),
                    ),
                ),
                divider(height: 18.9.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Transform.scale(
                      scale: .8,
                      child: SizedBox(
                        width: 16.w,
                        height: 16.h,
                        child: Checkbox(
                          value: false,
                          side: MaterialStateBorderSide.resolveWith(
                                (states) => BorderSide(width: 1.5, color: checkBoxBorder)),
                          shape:const CircleBorder(),
                          onChanged: (value){},
                        ),
                      ),
                    ),
                    divider(width: 9.w),
                    RichText(
                        text: TextSpan(
                            text: "Agree with ",
                            style: TextStyle(
                                fontFamily: medium,
                                color: termsAndCondnGrey,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400
                            ),
                            children: [
                              TextSpan(
                                  text: "terms and conditions.",
                                  style: TextStyle(
                                      fontFamily: medium,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500,
                                      color: termsAndCondnBlack,
                                  )
                              )
                            ]
                        )
                    ),
                  ],
                ),
      divider(height: 117.2.h),
                buttons
                  (  width: 302.w,height: 48.h,
                  buttonText: "Create Account",
                    gradient: true,
                    onTap: (){},
                    dividerWidth: 0,
                  buttonColor: buttonBackgroundColor,
                  textColor: whiteTextColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
