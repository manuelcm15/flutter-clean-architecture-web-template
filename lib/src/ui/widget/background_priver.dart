import 'package:flutter/material.dart';
import 'package:web_template/src/ui/utils/app_colors.dart';
import 'package:web_template/src/ui/utils/constants_resource.dart';

class BackgroundPriver extends StatelessWidget {
  const BackgroundPriver({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          color: AppColors.backgroundColor,
          child: Container(
            constraints: const BoxConstraints( maxWidth: 400 ),
            child: const Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Image(
                  image: AssetImage(ConstantsResources.FULL_LOGO),
                  width: 400,
                ),
              ),
            ),
          ),
        )
    );
  }
}
