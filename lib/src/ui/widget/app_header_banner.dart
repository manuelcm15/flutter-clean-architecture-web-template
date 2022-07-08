import 'package:flutter/material.dart';
import 'package:web_template/src/ui/utils/constants_resource.dart';


class AppHeaderBanner extends StatelessWidget {
  final double width;
  const AppHeaderBanner({Key? key,
  this.width = 50}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      ConstantsResources.COMPACT_LOGO,
      width: width,
      fit: BoxFit.cover,
    );
  }
}
