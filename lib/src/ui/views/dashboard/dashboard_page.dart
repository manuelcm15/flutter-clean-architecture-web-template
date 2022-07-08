import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:web_template/src/ui/utils/app_colors.dart';
import 'package:web_template/src/ui/views/dashboard/dashboard_controller.dart';
import 'package:web_template/src/ui/widget/responsive_builder.dart';


class DashBoardPage extends StatefulWidget {
  const DashBoardPage({Key? key}) : super(key: key);

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {

  final _controller = DashboardController();

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
            return Center(
              child: Text("Dashboard",style: TextStyle(color: Colors.white),),
            );
          },
          tabletBuilder: (context, constraints) {
            return Center(
              child: Text("Dashboard",style: TextStyle(color: Colors.white),),
            );
          },
          desktopBuilder: (context, constraints) {
            return Center(
              child: Text("Dashboard",style: TextStyle(color: Colors.white),),
            );
          },
        ),
      ),
    );
  }


}
