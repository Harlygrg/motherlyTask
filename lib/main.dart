import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:motherly/Screens/find_doulas.dart';
import 'package:motherly/Screens/parent_home_page.dart';
import 'package:motherly/Screens/payment_mode.dart';
import 'package:motherly/Screens/profile_setup.dart';
import 'package:motherly/controllers/bottom_nav_controller.dart';
import 'package:motherly/controllers/navigation_controller.dart';
import 'package:motherly/widgets/bottom_nav.dart';
import 'package:motherly/widgets/icons.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
  Get.put(NavigationController());
  final controller=Get.put(NavigationController());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: ()=>
          GetMaterialApp(
            debugShowCheckedModeBanner: false,
            builder: (context,widget){
              ScreenUtil.setContext(context);
              return MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
                child: widget!,);
            },
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home:
            //IconSample(),
            //BottomNavBar(),
            //ParentHomePage(),
            //PaymentMode(),
            //ProfileSetup(),
            FindDoulas() ,
          ),
      designSize: Size(375, 812),

    );
  }
}
