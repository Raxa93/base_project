import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../app_styles/app_colors.dart';

class LoadingUtils {
  late BuildContext context;

  LoadingUtils(this.context);

  bool isLoading = false;

  // this is where you would do your fullscreen loading
  Future<void> startLoading() async {
    isLoading = true;
    return await showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return SimpleDialog(
          elevation: 0.0,
          contentPadding: EdgeInsets.zero,
          insetPadding: EdgeInsets.zero,
          backgroundColor: Colors.black.withOpacity(0.3),
          // can change this to your prefered color
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              color: Colors.black.withOpacity(0.5),
              height: 5.h,
              width: 5.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 1.5.h),
                    child: const CircularProgressIndicator(
                      color: AppColors.redColor,
                    ),
                  ),
                  // Padding(
                  //   padding: EdgeInsets.all(2.h),
                  //   child: Text(
                  //     "pleaseWait".tr(),
                  //     textAlign: TextAlign.center,
                  //     style: AppColors.appBarTextStyle.copyWith(
                  //       fontSize: 20.sp,
                  //       fontWeight: FontWeight.w800,
                  //       fontFamily: "Raleway",
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  Future<void> stopLoading() async {
    isLoading = false;
    Navigator.of(context).pop();
  }

  Future<void> showError(Object? error) async {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        action: SnackBarAction(
          label: 'Dismiss',
          onPressed: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
        ),
        backgroundColor: Colors.red,
        content: Text(error.toString()),
      ),
    );
  }
}
