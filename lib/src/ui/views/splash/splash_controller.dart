import 'package:flutter/material.dart';
import 'package:web_template/src/services/providers.dart';


class SplashController{
  GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();
  late BuildContext context;

  init(BuildContext context) async {
    this.context = context;
    GlobalProviders.authProvider.read.isAuthenticated();
  }

}