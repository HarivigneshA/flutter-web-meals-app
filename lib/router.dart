import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:meals_app/constants.dart';
import 'package:meals_app/screens/home_page.dart';
import 'package:meals_app/screens/login_screen.dart';
import 'package:meals_app/screens/splash_screen.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static Handler _splashScreenHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) =>
          SplashScreen());
  static Handler _homePageHandler =
      Handler(handlerFunc: (context, params) => HomePage());
  static Handler _loginPageHandler =
      Handler(handlerFunc: (context, params) => LoginScreen());

  static void setupRouter() {
    router.define(
      splashRoute,
      handler: _splashScreenHandler,
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      homePageRoute,
      handler: _homePageHandler,
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      loginPageRoute,
      handler: _loginPageHandler,
      transitionType: TransitionType.fadeIn,
    );
  }
}
