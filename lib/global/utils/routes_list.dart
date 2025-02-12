import 'package:bowl_app/modules/auth/signup/screens/signup_screen.dart';
import 'package:bowl_app/modules/dashboard/screens/dashboard_screen.dart';
import 'package:bowl_app/modules/pensioners/screens/pensioner_list_screen.dart';
import 'package:bowl_app/modules/errors/screens/no_internet_screen.dart';
import 'package:bowl_app/modules/errors/screens/page_not_found_screen.dart';
import 'package:bowl_app/modules/splash/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class GenerateRoutePageSystem {
  static Route<dynamic>? getKnownRoutes(RouteSettings settings) {
    var argus = settings.arguments;
    switch (settings.name) {
      case '/':
        if (argus is Map<String, dynamic>) {
          return PageTransition(
            curve: Curves.bounceIn,
            duration: Durations.short4,
            type: PageTransitionType.fade,
            child: SplashScreen(arguments: argus),
          );
        }
        return PageTransition(
          curve: Curves.bounceIn,
          duration: Durations.short4,
          type: PageTransitionType.fade,
          child: SplashScreen(arguments: const {}),
        );
      case '/dashboard':
        if (argus is Map<String, dynamic>) {
          return PageTransition(
              curve: Curves.bounceIn,
              duration: Durations.short4,
              type: PageTransitionType.fade,
              child: DashboardScreen(arguments: argus),
              isIos: false);
        }
        return PageTransition(
            curve: Curves.bounceIn,
            duration: Durations.short4,
            type: PageTransitionType.fade,
            child: DashboardScreen(arguments: const {}),
            isIos: false);
      case '/pensioner-list':
        if (argus is Map<String, dynamic>) {
          return PageTransition(
              curve: Curves.bounceIn,
              duration: Durations.short4,
              type: PageTransitionType.fade,
              child: PensionerListScreen(arguments: argus),
              isIos: false);
        }
        return PageTransition(
            curve: Curves.bounceIn,
            duration: Durations.short4,
            type: PageTransitionType.fade,
            child: PensionerListScreen(arguments: const {}),
            isIos: false);

      case '/signup':
        if (argus is Map<String, dynamic>) {
          return PageTransition(
              curve: Curves.bounceIn,
              duration: Durations.short4,
              type: PageTransitionType.fade,
              child: SignupScreen(arguments: argus),
              isIos: false);
        }
        return PageTransition(
            curve: Curves.bounceIn,
            duration: Durations.short4,
            type: PageTransitionType.fade,
            child: SignupScreen(arguments: const {}),
            isIos: false);

      case '/no-internet':
        if (argus is Map<String, dynamic>) {
          return PageTransition(
              curve: Curves.bounceIn,
              duration: Durations.short4,
              type: PageTransitionType.fade,
              child: NoInternetScreen(arguments: argus),
              isIos: false);
        }
        return PageTransition(
            curve: Curves.bounceIn,
            duration: Durations.short4,
            type: PageTransitionType.fade,
            child: NoInternetScreen(arguments: const {}),
            isIos: false);
      default:
        if (argus is Map<String, dynamic>) {
          return PageTransition(
              curve: Curves.bounceIn,
              duration: Durations.short4,
              type: PageTransitionType.fade,
              child: PageNotFoundScreen(arguments: argus),
              isIos: false);
        }
        return PageTransition(
            curve: Curves.bounceIn,
            duration: Durations.short4,
            type: PageTransitionType.fade,
            child: PageNotFoundScreen(arguments: const {}),
            isIos: false);
    }
  }
}
