import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motherly/Screens/parent_home_page.dart';
import 'package:motherly/Screens/payment_mode.dart';
import 'package:motherly/Screens/profile_setup.dart';
import 'package:motherly/widgets/bottom_nav.dart';

class NavigationController extends GetxController{

  buttonOnClickToProfileSetup(){

    Get.to(()=>ProfileSetup());
  }


  buttonOnClickToPaymentMode(){

    Get.to(()=>PaymentMode());
  }


  buttonOnClickToParentHome(){

    Get.to(()=>BottomNavBar());
  }

  backButton(){
    Get.back();
  }

}