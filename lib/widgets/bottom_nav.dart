import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:motherly/Screens/parent_home_page.dart';
import 'package:motherly/constants/const_images.dart';
import 'package:motherly/constants/constat_colors.dart';
import 'package:motherly/controllers/bottom_nav_controller.dart';
import 'package:motherly/widgets/icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavBar extends StatelessWidget {
   BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavController>(
      init: BottomNavController(),
      builder: (controller) {
        return SafeArea(
          child: Scaffold(
            body:ParentHomePage(),
            //controller.screens[controller.currentIndex],

bottomNavigationBar: Container(
  decoration:const BoxDecoration(
    borderRadius: BorderRadius.only(
      topRight: Radius.circular(20,),
      topLeft: Radius.circular(20,),
    ),
    boxShadow: <BoxShadow>[
      BoxShadow(
          color: Colors.grey,
          blurRadius: 10,

      ),
    ],
  ),
  child: ClipRRect(
    borderRadius: BorderRadius.only(
      topRight: Radius.circular(20,),
      topLeft: Radius.circular(20,),
    ),
    child: BottomNavigationBar(
           // selectedIconTheme: IconThemeData(color: Colors.red, size: 25, opacity: .8),
              currentIndex: controller.currentIndex,
               showUnselectedLabels: false,
               showSelectedLabels: false,
              type: BottomNavigationBarType.fixed,
              //backgroundColor: Colors.green,
              onTap: (index){
                controller.currentIndex =index;
                print("----------${ controller.currentIndex}");
                controller.update();

              },
              items: [
            BottomNavigationBarItem(
              icon:
              //Icon(Icons.nat_outlined),
              controller.currentIndex==0? gredientIcon(iconName: homeIcon) :
              refactIcons(picture: homeIcon,width: 27.5.w,height: 26.h,
              ),
              label: "",


            ),
            BottomNavigationBarItem(
              icon:controller.currentIndex==1? gredientIcon(iconName: doulaIcon) :
              refactIcons(picture: doulaIcon,width: 27.5.w,height: 26.h,),
              label: "",


            ),
            BottomNavigationBarItem(
              icon:controller.currentIndex==2? gredientIcon(iconName: peopleIcon) :
              refactIcons(picture: peopleIcon,width: 27.5.w,height: 26.h,),
              label: "",


            ),
            BottomNavigationBarItem(
              icon:controller.currentIndex==3? gredientIcon(iconName: doctorIcon) :
              refactIcons(picture: doctorIcon,width: 27.5.w,height: 26.h,),
              label: "",


            ),
            BottomNavigationBarItem(
              icon:controller.currentIndex==4? gredientIcon(iconName: chatIcon) :
              refactIcons(picture: chatIcon,width: 27.5.w,height: 26.h,),
              label: "",


            ),
    ]
    ),
  ),
),
          ),
        );
      }
    );
  }
}
