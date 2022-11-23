import 'package:fluro/fluro.dart';
import 'package:notes_app/util/routes.dart';
import 'package:notes_app/view/screens/auth/login_screen.dart';
import 'package:notes_app/view/screens/home/home_screen.dart';
import 'package:notes_app/view/screens/splash/splash_screen.dart';

class RouterHelper {
  static final FluroRouter router = FluroRouter();

  static Handler _startupHandler = Handler(
      handlerFunc: (context, Map<String, dynamic> params) => SplashScreen());
  static Handler _loginHandler = Handler(
      handlerFunc: (context, Map<String, dynamic> params) => LoginScreen());
  static Handler _homeHandler = Handler(
      handlerFunc: (context, Map<String, dynamic> params) => HomeScreen());

  static void setupRouter() {
    router.define(Routes.SPLASH_SCREEN,
        handler: _startupHandler, transitionType: TransitionType.fadeIn);
    router.define(Routes.LOGIN_SCREEN,
        handler: _loginHandler, transitionType: TransitionType.fadeIn);
    router.define(Routes.HOME_SCREEN,
        handler: _homeHandler, transitionType: TransitionType.fadeIn);
  }
}
