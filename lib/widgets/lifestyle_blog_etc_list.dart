import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:motherly/constants/const_images.dart';
import 'package:motherly/widgets/life_style_card.dart';

import '../main.dart';

lifestyleBlogEtcList(){
  return SizedBox(
  width: 341.35.w,
    height:246.h ,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        lifeStyleCard(
            image: lifeStyle1, title: "BLOG", main: "First Doula Experience",
            likes: "2.1k", time: "1hr ago", description: "Lorem Ipsum"),
        lifeStyleCard(
            image: lifeStyle2, title: "LIFE STYLE", main: "Dietary Regulations",
            likes: "2.1k", time: "1hr ago", description: "Lorem Ipsum"),
      ],
    ),
  );
}