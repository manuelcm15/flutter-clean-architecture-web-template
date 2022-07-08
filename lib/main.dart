import 'package:flutter/material.dart';
import 'package:web_template/src/inject_dependencies.dart';
import 'package:web_template/src/router/router.dart';
import 'package:web_template/src/services/providers.dart';

import 'src/services/navigation_service.dart';
import 'src/services/notification_service.dart';

void main() async {
  Flurorouter.configureRoutes();
  GlobalProviders.configureProviders();
  // Inject dependencies on project
  injectDependencies();
  runApp(AppState());
}

class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyApp();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'admin Dashboard',
      initialRoute: Flurorouter.rootRoute,
      onGenerateRoute: Flurorouter.router.generator,
      navigatorKey: NavigationService.navigatorKey,
      scaffoldMessengerKey: NotificationsService.messengerKey,
      theme: ThemeData.light().copyWith(
          scrollbarTheme: const ScrollbarThemeData().copyWith(
              thumbColor: MaterialStateProperty.all(
                  Colors.grey.withOpacity(0.5)
              )
          )
      ),
    );
  }
}

