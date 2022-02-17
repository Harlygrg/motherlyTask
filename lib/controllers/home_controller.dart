import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motherly/constants/const_images.dart';

class HomeController extends GetxController{


  // first scroll view cards list

  List firstScroll=[{
    "image":consultDoctor,
    "heading":"Consult a \nGynaecologist" ,
    "subTitle": "Consult an experienced\n"
        "Gynacologist and wash away your worries",
  },{
    "image":consultGynec,"heading":"Book a \nDoula Service" ,"subTitle": "Consult an experienced\n"
        "Gynacologist and wash away your worries",
  },
    {
      "image":consultDoctor,"heading":"Consult a \nGynaecologist" ,"subTitle": "Consult an experienced\n"
        "Gynacologist and wash away your worries",
    },
  ];

List featureCardsList=[
  {
    "image":featureImage,"title":"CARD TEMPLATES\n",
    "mainText": "Create your own baby invites\n",
    "description": "Lorem Ipsem text"
  },
  {
    "image":babyImage,"title":"FACE CALCULATOR\n",
    "mainText": "Future baby prediction\n",
    "description": "Lorem Ipsem text"
  },
  {
    "image":featureImage,"title":"CARD TEMPLATES\n",
    "mainText": "Create your own baby invites\n",
    "description": "Lorem Ipsem text"
  },
];


List doulaSkillList = [
  {"image":doulaSkill1,"text":"Lorem Ipsum"},
  {"image":doulaSkill2,"text":"Lorem Ipsum"},
  {"image":doulaSkill3,"text":"Lorem Ipsum"},
  {"image":doulaSkill4,"text":"Lorem Ipsum"},
  {"image":doulaSkill6,"text":"Lorem Ipsum"},
];


List shareDoubtsList=[
  {
    "image":  doula1, "title": "Asked by Mother", "time": "5m ago",
    "ageAndPlace": "28 years, Kolkata",
    "question": "Is hair loss normal after a month of child's birth?",
    "answer": "2 answers from doctors."
  },
  {
    "image":  doula1, "title": "Asked by Mother", "time": "5m ago",
    "ageAndPlace": "28 years, Kolkata",
    "question": "Is hair loss normal after a month of child's birth?",
    "answer": "2 answers from doctors."
  },
  {
    "image":  doula1, "title": "Asked by Mother", "time": "5m ago",
    "ageAndPlace": "28 years, Kolkata",
    "question": "Is hair loss normal after a month of child's birth?",
    "answer": "2 answers from doctors."
  },
];


    List doulaImageList =[
      doula1,
      doula2,
      doula3,
      doula4,
      doula1,
      doula2,
      doula3,
      doula4,
      doula1,
      doula2,
      doula3,
      doula4,
    ];



}