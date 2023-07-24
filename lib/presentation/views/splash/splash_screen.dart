import 'package:base_app/presentation/views/splash/splash_vm.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../app_styles/app_colors.dart';
import '../../constants/app_assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Consumer<SplashVm>(
        builder: (context, vm, _) => Scaffold(
          backgroundColor: AppColors.blueBlockColor,
          body: Center(
            child: Image.asset(
              AppAssets.appLogo,
              width: 100.w,
              height: 90.h,
              key: const ValueKey('splash_screen'),
            ),
          ),
        ),
      ),
    );
  }
}
