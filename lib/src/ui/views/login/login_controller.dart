

import 'package:flutter/material.dart';
import 'package:web_template/src/services/notification_service.dart';
import 'package:web_template/src/services/providers.dart';


class LoginController{
  GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();
  late BuildContext context;

  TextEditingController emailInputController = TextEditingController();
  TextEditingController passwordInputController = TextEditingController();

  init(BuildContext context) {
    this.context = context;
  }

  void Login(){
    String email = emailInputController.text.trim();
    String password = passwordInputController.text;

    if (email.isEmpty || password.isEmpty) {
      NotificationsService.showSnackbarError('email y Password son necesario.');
      return;
    }
    GlobalProviders.authProvider.read.login("email", "password");
  }

}