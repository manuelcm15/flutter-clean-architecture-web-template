import 'package:flutter/material.dart';
import 'package:web_template/src/ui/utils/app_colors.dart';



class AppTextStyle{
  static const titleTextStyle = TextStyle(fontSize: 32, fontWeight: FontWeight.w300, color: AppColors.textColor);
  static const boldTitleTextStyle = TextStyle(fontSize: 32, fontWeight: FontWeight.w900, color: AppColors.textColor);
  static const normalTextStyle = TextStyle(fontSize: 15, fontWeight: FontWeight.normal, color: AppColors.textColor);
  static const boldTextStyle = TextStyle(fontSize: 17, fontWeight: FontWeight.w900, color: AppColors.textColor);
  static const normalSenderTextStyle = TextStyle(fontSize: 15, fontWeight: FontWeight.normal, color: Colors.amber);
}