import 'package:base_app/presentation/views/login/login_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../views/splash/splash_screen.dart';
import '../views/splash/splash_vm.dart';

class AppRoutes {
  AppRoutes._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case NamedRoute.login:
        return MaterialPageRoute<void>(
          builder: (context) => const LogInView(),
          settings: settings,
        );
      case NamedRoute.splash:
        return MaterialPageRoute(
            builder: (context) => ChangeNotifierProvider(
              create: (context) => SplashVm(),
              child: const SplashScreen(),
            ));
      default:
        return MaterialPageRoute<void>(
          builder: (_) => _UndefinedView(name: settings.name),
          settings: settings,
        );
    }

  }
}

class _UndefinedView extends StatelessWidget {
  const _UndefinedView({Key? key, this.name}) : super(key: key);
  final String? name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Something went wrong for $name'),
      ),
    );
  }
}

class NamedRoute {
  NamedRoute._();

  static const String login = '/';
  static const String splash = '/splash';

}