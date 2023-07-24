import 'package:base_app/data/repositiries/login_repo/login_repo.dart';
import 'package:base_app/presentation/app_styles/app_colors.dart';
import 'package:base_app/presentation/constants/app_contants.dart';
import 'package:base_app/presentation/routes/routes.dart';
import 'package:base_app/presentation/views/login/login_vm.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import 'data/dependency_injection/dependency_injection.dart';
import 'data/services/navigation_service.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  setUpLocator();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
      supportedLocales: const [Locale('en', 'US')],
      path: AppPaths.translationsPath,
      fallbackLocale: const Locale('en', 'US'),
      child: MultiProvider(

          providers: [
            ChangeNotifierProvider<LoginInVm>(
              create: (_) => LoginInVm(loginRepo: locator<LoginRepo>()),
            ),
          ],
          child: MyApp())));
}

class MyApp extends StatelessWidget {
  final navigatorService = locator<NavigationService>();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          navigatorKey: navigatorService.rootNavKey,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          initialRoute: NamedRoute.splash,
          onGenerateRoute: AppRoutes.generateRoute,
          theme: ThemeData(
              bottomSheetTheme: const BottomSheetThemeData(
                  backgroundColor: AppColors.lightBlackColor)),
        );
      },
    );
  }
}
