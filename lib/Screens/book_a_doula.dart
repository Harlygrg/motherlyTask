import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:motherly/constants/const_images.dart';
import 'package:motherly/widgets/divider.dart';


class BookDoula extends StatelessWidget {
  const BookDoula({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea (
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(

            padding:EdgeInsets.only(left: 19.w,right: 17.w),
            child: Column(
              children: [
                divider(height: 59.h),
                Padding(
                    padding: EdgeInsets.only(left: 17.w),
                  child: IconButton(
                      onPressed: (){},
                      icon: SvgPicture.asset(
                        backArroIcon,
                        color: Colors.black,

                      )
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
