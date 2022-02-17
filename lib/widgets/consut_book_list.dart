import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:motherly/constants/const_images.dart';

import 'home_1st_scroll.dart';

consultBookList(){
  return  SizedBox(
      width: 341.35.w,
      height:384.h ,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          firstCardSec(
            maintext: "Consult a \nGynaecologist",
            subText: "Consult an experienced\n"
                "Gynacologist and wash away your worries",
            backgroundImage: consultDoctor,
            onTap: (){},
          ),
          firstCardSec(
            maintext:"Book a \nDoula Service",
            subText: "Consult an experienced\n"
                "Gynacologist and wash away your worries",
            backgroundImage: consultGynec,
            onTap: (){},
          ),
          firstCardSec(
            maintext: "Consult a \nGynaecologist",
            subText: "Consult an experienced\n"
                "Gynacologist and wash away your worries",
            backgroundImage: consultDoctor,
            onTap: (){},
          ),

        ],
      )
  );
}