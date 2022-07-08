
import 'package:fluro/fluro.dart';
import 'package:web_template/src/ui/views/dashboard/dashboard_page.dart';
import 'package:web_template/src/ui/views/login/login_page.dart';
import 'package:web_template/src/ui/views/splash/splash_page.dart';


class AdminHandlers{
  static Handler login = Handler(
    handlerFunc: (context, params){
      print("auth/login");
      return LoginPage();
    }
  );

  static Handler dash = Handler(
      handlerFunc: (context, params){
        print("/dashboard");
        return DashBoardPage();
      }
  );

  static Handler splash = Handler(
      handlerFunc: (context, params){
        print("/splash");
        return SplashPage();
      }
  );
}