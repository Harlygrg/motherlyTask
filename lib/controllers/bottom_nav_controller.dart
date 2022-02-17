

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:motherly/Screens/parent_home_page.dart';

class BottomNavController extends GetxController{


  int currentIndex =0;
  List<Widget> screens=[
    ParentHomePage(),
  ];

}