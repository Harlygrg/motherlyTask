import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:motherly/constants/font_family.dart';

refactText({
  required String text,
   String fontFamily =semiBold,
  double fontSize=15,
  FontWeight fontWeight= FontWeight.normal,
  Color color=Colors.black,
  TextAlign ?align
}){
  return Text(text,maxLines: 2,
    overflow: TextOverflow.ellipsis,
    softWrap: false,
    textAlign: align,

    style: TextStyle(
        fontSize: fontSize,fontWeight: fontWeight,color: color,fontFamily: fontFamily
    ),);
}