import 'package:flutter/material.dart';

class PrimaryActionButton extends StatelessWidget {
  Color backgroundColor;
  Color textColor;
  String text;
  IconData icon;
  Function onPressed;
  bool useSVG;
  String svgAssetDir;
  String semanticsSvgLabel;

  PrimaryActionButton({Key? key,
    required this.text,
    required this.onPressed,
    required this.backgroundColor,
    this.textColor = Colors.white,
    this.useSVG = false,
    this.svgAssetDir = "",
    this.semanticsSvgLabel = "",
    this.icon = Icons.arrow_forward_ios,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed();
      },
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 50,
              alignment: Alignment.center,
              child: Text(
                text,
                style: TextStyle(
                    color: textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
        ],
      ),
      style: ElevatedButton.styleFrom(
          primary: backgroundColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
          )
      ),
    );
  }
}