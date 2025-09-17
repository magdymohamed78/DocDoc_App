import 'package:doc_doc_app/core/router/routes.dart';
import 'package:doc_doc_app/features/on_boarding/ui/on_boarding_screen.dart';
import 'package:doc_doc_app/features/splash/ui/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRoute {
  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (context) => SplashScreen());
        case  Routes.onBoarding: 
        return MaterialPageRoute(builder: (context) => OnBoardingScreen());
        default :
        MaterialPageRoute(builder: (context) => Column());

    }
  }
}
