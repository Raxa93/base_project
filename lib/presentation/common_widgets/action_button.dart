import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  final double textSize;
  final Color buttonColor;
  final Function()? onTap;
  final String buttonText;
  final double circularRadius;

  const ActionButton({
    Key? key,
    required this.buttonText,
    required this.onTap,
    required this.screenHeight,
    required this.screenWidth,
    required this.buttonColor,
    required this.circularRadius,

    required this.textSize
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(circularRadius),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(circularRadius),
          gradient: LinearGradient(
            colors: [
              buttonColor,
              buttonColor.withOpacity(0.8),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          boxShadow: [
            BoxShadow(
              color: buttonColor.withOpacity(0.3),
              offset: const Offset(0, 3),
              blurRadius: 1,
            ),
          ],
        ),
        height: screenHeight,
        width: screenWidth,
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: textSize,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}