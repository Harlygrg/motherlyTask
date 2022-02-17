import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:motherly/controllers/home_controller.dart';
import 'package:motherly/widgets/doulas_images.dart';
HomeController _controller =Get.find();
doulaImageList(){
  return SizedBox(
    width: 377.w,
    height: 160.h,
    child: GridView.builder(
      itemCount:_controller.doulaImageList.length ,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12.9.h,
          mainAxisSpacing: 8.61.h,
          childAspectRatio: 1 / 1,

        ),
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, index){
          return doulaImages(_controller.doulaImageList[index]);
        }
    ),
  );
}