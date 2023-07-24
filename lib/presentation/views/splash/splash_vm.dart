import 'package:base_app/data/services/navigation_service.dart';
import 'package:base_app/presentation/routes/routes.dart';
import 'package:get_it/get_it.dart';

import '../../../data/base/base_vm.dart';
class SplashVm extends BaseVm {
  // BuildContext context = navigatorKey.currentState!.context;
  // LoginRepo repo = GetIt.I.get<LoginRepo>();
  NavigationService navServices = GetIt.I.get<NavigationService>();
  SplashVm({bool? ignore = true}) {
    if (ignore!) {

       _initTimer();
    }
  }

  Future<void> _initTimer() async {
    await Future.delayed(const Duration(seconds: 4));
    navServices.nav.pushNamed(NamedRoute.login);

  }

}
