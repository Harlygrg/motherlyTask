
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:motherly/constants/const_images.dart';
import 'package:motherly/constants/constat_colors.dart';

refactIcons({
  required String picture,
  Color color =iconColor,
  double ?width,
  double ?height,
}){
  return SvgPicture.asset(picture,color: color,width: width,height: height,fit: BoxFit.contain,);
}
class GradientIcon extends StatelessWidget {
  GradientIcon(
      this.icon,
      this.size,
      this.width,
      this.gradient,
      );

  final String icon;
  final double size;
  final double width;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      child: SizedBox(
        width: size * 1.2,
        height: size * 1.2,
        child: SvgPicture.asset(
          icon,
          height: size,
          width: width,
          color: Colors.white,
        ),
      ),
      shaderCallback: (Rect bounds) {
        final Rect rect = Rect.fromLTRB(0, 0, size, size);
        return gradient.createShader(rect);
      },
    );
  }
}


gredientIcon({
  required String iconName
}){
  return GradientIcon(
   iconName,
    27.5.h,
    26.w,
   const LinearGradient(
      colors: <Color>[
        bottomNavIconPinkTop,
        bottomNavIconPinkBottom,
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  );
}
