import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:motherly/constants/const_images.dart';
import 'package:motherly/controllers/home_controller.dart';
import 'package:motherly/widgets/share_doubts_card.dart';


HomeController _controller=Get.find();
  shareDoubtsListView(){
    return SizedBox(
      width: 341.35.w,
      height:197.h ,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _controller.shareDoubtsList.length ,
          itemBuilder: (BuildContext context, index){
          var data=_controller.shareDoubtsList;
            return Padding(
                padding: EdgeInsets.only(left: 15.w),
            child: shareDoubts(
                image: data[index]["image"],
                title: data[index]["title"], time: data[index]["time"],
                ageAndPlace:data[index]["ageAndPlace"],
                question: data[index]["question"],
                answer: data[index]["answer"]),);
          })
      // ListView(
      //   scrollDirection: Axis.horizontal,
      //   children: [
      //
      //   ],
      // ),
    );
  }