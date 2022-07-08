import 'package:flutter/material.dart';

class DashboardController{
  GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();
  late BuildContext context;

  init(BuildContext context) {
    this.context = context;
  }
}