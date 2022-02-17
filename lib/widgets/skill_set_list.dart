import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:motherly/constants/const_images.dart';
import 'package:motherly/widgets/skill_set_card.dart';


skillSetList(){
  return  SizedBox(
      width:  341.35.w,
      height:225.h ,
      child:ListView(
        scrollDirection: Axis.horizontal,
        children: [
          doulaSkillSetCard(onTap: (){},
              image: doulaSkill1,
              text: "Lorem Ipsum"),
          doulaSkillSetCard(onTap: (){},
              image: doulaSkill2,
              text: "Lorem Ipsum"),
          doulaSkillSetCard(onTap: (){},
              image: doulaSkill3,
              text: "Lorem Ipsum"),
          doulaSkillSetCard(onTap: (){},
              image: doulaSkill4,
              text: "Lorem Ipsum"),
          doulaSkillSetCard(onTap: (){},
              image: doulaSkill6,
              text: "Lorem Ipsum"),
        ],
      )
  );
}