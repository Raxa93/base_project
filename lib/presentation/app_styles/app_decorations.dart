

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'app_colors.dart';

class AppDecorations{

  static TextStyle headline1 = TextStyle(
    fontWeight: FontWeight.w300,
    color: AppColors.whiteColor,
    fontSize: 5.h,
  );


  static  TextStyle bodyText1 = TextStyle(
    fontWeight: FontWeight.w300,
    color: Colors.grey,
    fontSize: 2.5.h,
  );

  static const BoxDecoration blackTwoRoundedCornerContainer = BoxDecoration(
    color: AppColors.lightBlackColor,
    borderRadius: BorderRadius.only(
        topRight:  Radius.circular(20),
    topLeft: Radius.circular(20),
    ),
  );


  static const BoxDecoration lightGreyContainer = BoxDecoration(
    color: AppColors.lightGreyColor,
    borderRadius: BorderRadius.all(Radius.circular(7)),
  );

}