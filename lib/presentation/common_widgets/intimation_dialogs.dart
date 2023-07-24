
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../../data/dependency_injection/dependency_injection.dart';
import '../../data/services/navigation_service.dart';

class IntimationDialogs {
  static final navigatorKey = locator<NavigationService>().rootNavKey;

  static showSuccessSnackBar(String successMessage) {
    return showTopSnackBar(
      navigatorKey.currentState!.overlay!,
       CustomSnackBar.success(
        message: successMessage,
      ),
    );
  }

  static showErrorSnackBar(String message) {
    return showTopSnackBar(
      navigatorKey.currentState!.overlay!,
       CustomSnackBar.error(
        message: message.toString(),
      ),
    );
  }

  // static void showCustomArrowDialog(
  //   BuildContext context, {
  //   required String titleText,
  //   required Widget childColumn,
  //   required Widget buttonWidget,
  //   required Function() onButtonPressed,
  //   required bool isLevel,
  //   bool isLivesDialog = false,
  // }) {
  //   showGeneralDialog(
  //     context: context,
  //     barrierColor: Colors.black12.withOpacity(0.7),
  //     barrierDismissible: isLivesDialog ? true : false,
  //     barrierLabel: 'Dialog',
  //     transitionDuration: const Duration(milliseconds: 700),
  //     pageBuilder: (_, __, ___) {
  //       return Column(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: [
  //           Stack(
  //             children: [
  //               Container(
  //                 margin: EdgeInsets.only(top: 5.h),
  //                 height: 9.5.h,
  //                 decoration: AppColors.backgroundRedGradientContainer,
  //               ),
  //               Container(
  //                 alignment: Alignment.center,
  //                 margin: EdgeInsets.symmetric(horizontal: 8.w),
  //                 child: Stack(
  //                   alignment: Alignment.center,
  //                   children: [
  //                     Container(
  //                       height: 65.h,
  //                       width: double.infinity,
  //                       decoration: const BoxDecoration(
  //                         image: DecorationImage(image: AssetImage(AppAssets.dialogArrowBg), fit: BoxFit.fill),
  //                       ),
  //                       child: UiComponents.centralGradientBlueContainer(
  //                         child: childColumn,
  //                       ),
  //                     ),
  //                     !isLivesDialog
  //                         ? Positioned(
  //                             bottom: isLevel ? 9.5.h : 8.h,
  //                             child: Material(
  //                               color: Colors.transparent,
  //                               child: InkWell(
  //                                 onTap: () {
  //                                   Navigator.pop(context);
  //                                   onButtonPressed();
  //                                 },
  //                                 child: buttonWidget,
  //                               ),
  //                             ),
  //                           )
  //                         : Positioned(
  //                             bottom: isLevel ? 9.5.h : 8.h,
  //                             child: Material(
  //                               color: Colors.transparent,
  //                               child: buttonWidget,
  //                             ),
  //                           ),
  //                   ],
  //                 ),
  //               ),
  //               Container(
  //                 margin: EdgeInsets.only(top: 1.5.h, left: 6.w, right: 6.w),
  //                 height: 9.5.h,
  //                 decoration: AppColors.redGradientContainer,
  //                 child: Material(
  //                   color: Colors.transparent,
  //                   child: Center(
  //                     child: Text(
  //                       titleText,
  //                       style: AppColors.shadowTextStyle.copyWith(fontWeight: FontWeight.bold, fontSize: 30.sp, fontFamily: "Tilt Warp"),
  //                     ),
  //                   ),
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }

  // static void showCustomGlowDialog(
  //   BuildContext context, {
  //   bool isRewardDialog = false,
  //   bool isDismissible = false,
  //   bool showLaterButton = false,
  //   Widget childColumn = const SizedBox(),
  //   required Widget buttonWidget,
  //   required Widget titleWidget,
  //   required Function() onButtonPressed,
  //   Widget ratingStars = const SizedBox(),
  // }) {
  //   showGeneralDialog(
  //     context: context,
  //     barrierColor: Colors.black12.withOpacity(0.9),
  //     barrierDismissible: isDismissible,
  //     barrierLabel: 'Dialog',
  //     transitionDuration: const Duration(milliseconds: 700),
  //     pageBuilder: (_, __, ___) {
  //       List<RewardListWidget> list = [];
  //       if (isRewardDialog) {
  //         list = List.generate(
  //             DailyRewardModel.getDailyRewardsList().length,
  //             (index) => RewardListWidget(
  //                   model: DailyRewardModel.getDailyRewardsList()[index],
  //                 ));
  //       }
  //
  //       return SingleChildScrollView(
  //         child: Stack(
  //           alignment: Alignment.center,
  //           children: [
  //             Container(
  //               alignment: Alignment.center,
  //               height: SizerUtil.height,
  //               width: SizerUtil.width,
  //               decoration: const BoxDecoration(
  //                 image: DecorationImage(image: AssetImage(AppAssets.glowBg), opacity: 0.65, fit: BoxFit.fitHeight),
  //               ),
  //             ),
  //             Column(
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               children: [
  //                 Material(color: Colors.transparent, child: titleWidget),
  //                 SizedBox(height: 4.h),
  //                 isRewardDialog
  //                     ? Column(
  //                         children: [
  //                           Row(
  //                             mainAxisAlignment: MainAxisAlignment.center,
  //                             children: [
  //                               Image.asset(
  //                                 AppAssets.dialogCoinsIcon,
  //                                 height: 12.h,
  //                                 width: 18.h,
  //                                 fit: BoxFit.fill,
  //                               ),
  //                               UiComponents.capsuleCoinsContainer(
  //                                 child: Text(
  //                                   "  +300  ",
  //                                   style: AppColors.tiltWarpTextStyle.copyWith(
  //                                     fontSize: 17.sp,
  //                                     fontWeight: FontWeight.w400,
  //                                     color: AppColors.coinsTextColor,
  //                                   ),
  //                                 ),
  //                               )
  //                             ],
  //                           ),
  //                           SizedBox(height: 4.h),
  //                           Material(
  //                             color: Colors.transparent,
  //                             child: Text(
  //                               "comeBackForRewards".tr(),
  //                               style: AppColors.tiltWarpTextStyle.copyWith(
  //                                 fontWeight: FontWeight.w400,
  //                                 fontSize: 15.sp,
  //                               ),
  //                             ),
  //                           ),
  //                           SizedBox(height: 3.h),
  //                           Wrap(
  //                             alignment: WrapAlignment.center,
  //                             spacing: 1.5.h,
  //                             runSpacing: 1.5.h,
  //                             children: list,
  //                           ),
  //                           SizedBox(height: 3.h),
  //                           SizedBox(
  //                               width: 50.w,
  //                               height: 12.h,
  //                               child: Material(
  //                                 color: Colors.transparent,
  //                                 child: InkWell(
  //                                   onTap: onButtonPressed,
  //                                   child: UiComponents.collectDialogButton(),
  //                                 ),
  //                               )),
  //                         ],
  //                       )
  //                     : Container(
  //                         margin: EdgeInsets.symmetric(horizontal: 2.h),
  //                         decoration: BoxDecoration(
  //                           color: const Color(0xFF0452BA),
  //                           border: Border.all(color: const Color(0xff1D86E1).withOpacity(0.5), width: 3),
  //                           borderRadius: const BorderRadius.all(Radius.circular(12)),
  //                         ),
  //                         child: Stack(
  //                           alignment: Alignment.center,
  //                           children: [
  //                             Container(
  //                               margin: EdgeInsets.fromLTRB(2.h, 2.h, 2.h, 6.5.h),
  //                               decoration: BoxDecoration(
  //                                 color: const Color(0xff0745AC),
  //                                 border: Border.all(color: const Color(0xff3384D6).withOpacity(0.5), width: 2),
  //                                 borderRadius: const BorderRadius.all(Radius.circular(12)),
  //                               ),
  //                               child: childColumn,
  //                             ),
  //                             Positioned(
  //                               bottom: 4.h,
  //                               child: Material(
  //                                 color: Colors.transparent,
  //                                 child: InkWell(
  //                                   onTap: () {
  //                                     Navigator.pop(context);
  //                                     onButtonPressed();
  //                                   },
  //                                   child: buttonWidget,
  //                                 ),
  //                               ),
  //                             ),
  //                             Positioned(
  //                               bottom: 1.h,
  //                               child: Material(
  //                                 color: Colors.transparent,
  //                                 child: ratingStars,
  //                               ),
  //                             ),
  //                           ],
  //                         ),
  //                       ),
  //                 showLaterButton
  //                     ? Material(
  //                         color: Colors.transparent,
  //                         child: Padding(
  //                           padding: EdgeInsets.only(top: 6.h),
  //                           child: InkWell(
  //                             onTap: () => Navigator.pop(context),
  //                             child: Text(
  //                               'later'.tr(),
  //                               style: AppColors.tiltWarpTextStyle.copyWith(
  //                                 fontSize: 17.sp,
  //                                 fontWeight: FontWeight.normal,
  //                               ),
  //                             ),
  //                           ),
  //                         ),
  //                       )
  //                     : const SizedBox(),
  //               ],
  //             )
  //           ],
  //         ),
  //       );
  //     },
  //   );
  // }
  //
  // static void showChapterSuccessDialog(BuildContext context, {required Function() onNextButton}) {
  //   showGeneralDialog(
  //     context: context,
  //     barrierColor: Colors.black12.withOpacity(0.7),
  //     barrierDismissible: false,
  //     barrierLabel: 'Dialog',
  //     transitionDuration: const Duration(milliseconds: 700),
  //     pageBuilder: (_, __, ___) {
  //       return Column(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: [
  //           Container(
  //             alignment: Alignment.center,
  //             margin: EdgeInsets.symmetric(horizontal: 10.w),
  //             child: Stack(
  //               children: [
  //                 Image.asset(
  //                   AppAssets.dialogArrowBg,
  //                   height: 60.h,
  //                   width: double.infinity,
  //                   fit: BoxFit.fill,
  //                 ),
  //                 Container(
  //                   margin: EdgeInsets.symmetric(horizontal: 7.w, vertical: 1.h),
  //                   height: 45.h,
  //                   decoration: BoxDecoration(
  //                     color: const Color(0xff127CCB),
  //                     border: Border.all(color: const Color(0xff2697E9)),
  //                     borderRadius: const BorderRadius.all(Radius.circular(12)),
  //                   ),
  //                 ),
  //                 Container(),
  //                 Column(
  //                   mainAxisAlignment: MainAxisAlignment.spaceAround,
  //                   children: const <Widget>[],
  //                 ),
  //               ],
  //             ),
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }
}
