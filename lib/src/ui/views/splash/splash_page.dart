import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:web_template/src/ui/utils/app_colors.dart';
import 'package:web_template/src/ui/views/splash/splash_controller.dart';
import 'package:web_template/src/ui/widget/responsive_builder.dart';


import '../../widget/app_header_banner.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final _controller = SplashController();

  @override
  void initState() {
    super.initState();

    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      _controller.init(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: ResponsiveBuilder(
          mobileBuilder: (context, constraints) {
            return LouderPriver();
          },
          tabletBuilder: (context, constraints) {
            return LouderPriver();
          },
          desktopBuilder: (context, constraints) {
            return LouderPriver();
          },
        ),
      ),
    );
  }
}

class LouderPriver extends StatelessWidget {
  const LouderPriver({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, //Center Column contents vertically,
        crossAxisAlignment: CrossAxisAlignment.center, //Center Column contents horizontally,
        children: [
          AppHeaderBanner(width: ResponsiveBuilder.getScreenWidth(context) * 0.10,),
          SizedBox(height: 20,),
          CircularProgressIndicator()
        ],
      ),
    );
  }
}
