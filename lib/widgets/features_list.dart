import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:motherly/constants/const_images.dart';

import 'feature_card.dart';

featureList(){
  return SizedBox(
    width:  341.35.w,
    height:263.h ,
    child:ListView(
      scrollDirection:Axis.horizontal,
      children: [
        featureCard(
            onTap: (){},
            image: featureImage,
            title: "CARD TEMPLATES",
            main: "Create your own baby invites",
            description: "Lorem Ipsem text"
        ),
        featureCard(
            onTap: (){},
            image: babyImage,
            title:"FACE CALCULATOR",
            main: "Future baby prediction",
            description: "Lorem Ipsem text"
        ),
        featureCard(
            onTap: (){},
            image: featureImage,
            title: "CARD TEMPLATES",
            main: "Create your own baby invites",
            description: "Lorem Ipsem text"
        ),
      ],
    ),
  );
}