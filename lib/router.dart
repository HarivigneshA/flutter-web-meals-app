import 'package:fluro/fluro.dart';
import 'package:meals_app/constants.dart';
import 'package:meals_app/screens/about_us.dart';
import 'package:meals_app/screens/home_page.dart';
import 'package:meals_app/screens/login_screen.dart';
import 'package:meals_app/screens/route_not_found_handler.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  // static Handler _splashScreenHandler =
  //     Handler(handlerFunc: (context, params) => SplashScreen());
  static Handler _homePageHandler =
      Handler(handlerFunc: (context, params) => HomePage());
  static Handler _loginPageHandler =
      Handler(handlerFunc: (context, params) => LoginScreen());
  static Handler _routeNotFoundHandler =
      Handler(handlerFunc: (context, params) => RouteNotFoundScreen());
  static Handler _aboutUaPageHandler =
      Handler(handlerFunc: (context, params) => AboutUs());

  static void setupRouter() {
    router.notFoundHandler = _routeNotFoundHandler;
    router.define(
      aboutUsPageRoute,
      handler: _aboutUaPageHandler,
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
