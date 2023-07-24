// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:base_app/presentation/app_styles/app_decorations.dart';
import 'package:base_app/presentation/common_widgets/action_button.dart';
import 'package:base_app/presentation/views/login/login_vm.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import '../../app_styles/app_colors.dart';

import '../../constants/app_assets.dart';

class LogInView extends StatelessWidget {
  const LogInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginInVm vm = context.watch<LoginInVm>();
    return SafeArea(
      bottom: false,
      child: Scaffold(
        backgroundColor: AppColors.blackColor,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AppAssets.loginBackGround))),
          child: const Center(
            child: Text(
              'Welcome',
              style: TextStyle(),
            ),
          ),
        ),
        bottomSheet: Container(
          width: 100.w,
          height: 40.h,
          decoration: AppDecorations.blackTwoRoundedCornerContainer,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Sign In', style: AppDecorations.headline1),
                Text('We Will send a Verification Code, Charges may apply',
                    style: AppDecorations.bodyText1,
                    textAlign: TextAlign.center),
                _buildCountryPicker(context: context, vm: vm),
                ActionButton(
                    buttonText: 'Continue',
                    onTap: () async {
                      FocusScope.of(context).requestFocus(FocusNode());
                      await vm.login(context);
                    },
                    screenHeight: 7.h,
                    screenWidth: 90.h,
                    buttonColor: AppColors.redColor,
                    circularRadius: 15,
                    textSize: 3.h)
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildCountryPicker({required BuildContext context, required LoginInVm vm}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 100.w,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: AppDecorations.lightGreyContainer,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 10.w,
              height: 5.h,
              child: TextField(
                controller: vm.userNameController,
                style: const TextStyle(color: AppColors.whiteColor),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: '+92',
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              color: AppColors.whiteColor,
              height: 3.h,
              width: 0.4.w,
            ),
            SizedBox(
              width: 5.w,
            ),
            SizedBox(
              width: 40.w,
              height: 5.h,
              child: const TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: '3139005665',
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

//
// Widget _buildDropdownItem(Country country) =>  Row(
//   children: <Widget>[
//     Expanded(child: Container(
//         margin: EdgeInsets.only(right: 8),
//         child: CountryPickerUtils.getDefaultFlagImage(country)),),
//     Expanded(child: Text(
//         "+${country.phoneCode}(${country.isoCode})",
//
//     ),)
//   ],
//
// );
}
