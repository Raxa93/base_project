import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AppColors {
  static const Color yellowColor = Colors.yellow;
  static const Color orangeAccentColor = Colors.orangeAccent;
  static const Color redColor = Colors.red;
  static const Color whiteColor = Colors.white;
  static const Color blueGreyColor = Colors.blueGrey;
  static const Color blackColor = Colors.black;
  static const Color lightBlackColor = Colors.black54;
  static const Color whiteShadowColor = Color(0xFF9FAAB5);
  static const Color greenShadowColor = Color(0xFF3AA919);
  static const Color blueShadowColor = Color(0xFF3A3BD3);
  static const Color blueBlockColor = Color(0xFF3026A0);
  static const Color blueBlocksBorderColor = Color(0xFF6062F1);
  static const Color coinsTextColor = Color(0xFFA13018);
  static const Color lightBlueTextColor = Color(0xFF3DF3FF);
  static const Color lightYellowColor = Color(0xFFFFF967);
  static const Color yellowCoinsTextColor = Color(0xFFF8C514);
  static const Color blueTextColor = Color(0xFF0383DF);
  static const Color purpleTextColor = Color(0xFF403F7D);
  static const Color darkBrownTextColor = Color(0xFF57402B);
  static const Color lightGreyColor = Color.fromRGBO(217, 217, 217, 0.25);
  static const Color darkBlueDialogBgColor = Color(0xFF0447A5);
  static const Color lightBgColor = Color(0xFFFFFEED);
  static const Color rewardYellowColor = Color(0xFFFF9900);
  static const LinearGradient blueBgGradient = LinearGradient(
    colors: [Color(0xff2766ae), Color(0xff033791)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );





  static TextStyle appBarTextStyle = TextStyle(
    fontFamily: "Museo Sans",
    fontWeight: FontWeight.w800,
    fontSize: 11.sp,
    color: AppColors.whiteColor,
  );

  static TextStyle mainPlayTextStyle = TextStyle(
    fontFamily: "Raleway",
    fontWeight: FontWeight.w800,
    fontSize: 40.sp,
    color: AppColors.whiteColor,
  );

  static TextStyle shadowTextStyle = TextStyle(
    fontSize: 15.sp,
    color: AppColors.whiteColor,
    fontFamily: "Raleway",
    fontWeight: FontWeight.bold,
    shadows: const [
      Shadow(
        color: Colors.black26,
        blurRadius: 10,
        offset: Offset(4, 7),
      ),
    ],
  );

  static TextStyle tiltWarpTextStyle = TextStyle(
    fontFamily: "Tilt Warp",
    fontWeight: FontWeight.w800,
    fontSize: 40.sp,
    color: AppColors.whiteColor,
  );

  static TextStyle gradientText = TextStyle(
    fontFamily: "Mikado",
    fontWeight: FontWeight.w600,
    fontSize: 20.sp,
    letterSpacing: 7,
    foreground: Paint()
      ..shader = const LinearGradient(
        colors: <Color>[Color(0xFFEDA005), Color(0xFFF5FB75)],
      ).createShader(const Rect.fromLTWH(100.0, 0.0, 200.0, 70.0)),
  );


}

class GradientPack {
  final LinearGradient linearGradient;
  final Color borderColor;
  final Color shadowColor;

  GradientPack({
    required this.linearGradient,
    required this.borderColor,
    required this.shadowColor,
  });
}
