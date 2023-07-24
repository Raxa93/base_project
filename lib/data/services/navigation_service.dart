import 'package:flutter/cupertino.dart';

class NavigationService {
  NavigationService();

  GlobalKey<NavigatorState> rootNavKey = GlobalKey();

  NavigatorState get nav => rootNavKey.currentState!;
}
