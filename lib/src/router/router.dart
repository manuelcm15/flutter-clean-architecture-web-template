import 'package:fluro/fluro.dart';
import 'package:web_template/src/router/admin_hadler.dart';
import 'package:web_template/src/router/no_page_found_handlers.dart';


class Flurorouter{

  static final FluroRouter router = FluroRouter();

  static String rootRoute = '/';

  //Auth Router
  static final loginRoute = '/auth/login';
  static final registerRoute = '/auth/register';

  //Dashboard
  static final dashboardRoute = '/dashboard';

  static void configureRoutes(){
    router.define(rootRoute, handler: AdminHandlers.splash);
    router.define(loginRoute, handler: AdminHandlers.login);
    router.define(dashboardRoute, handler: AdminHandlers.dash , transitionType: TransitionType.fadeIn);
    router.notFoundHandler = NoPageFoundHandlers.noPageFound;
    //router.define(registerRoute, handler: handler);


  }
}