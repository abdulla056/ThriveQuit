import 'package:flutter/material.dart';
import 'package:thrive_quit_application/core/app_export.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({
    Key? key,
    this.decoration,
    this.leftIcon,
    this.rightIcon,
    this.label,
    this.onPressed,
    this.buttonStyle,
    this.buttonTextStyle,
    this.isDisabled,
    this.alignment,
    this.height,
    this.width,
    this.margin,
    required this.text,
  }) : super(key: key);

  final BoxDecoration? decoration;
  final Widget? leftIcon;
  final Widget? rightIcon;
  final Widget? label;
  final VoidCallback? onPressed;
  final ButtonStyle? buttonStyle;
  final TextStyle? buttonTextStyle;
  final bool? isDisabled;
  final Alignment? alignment;
  final double? height;
  final double? width;
  final EdgeInsets? margin;
  final String text;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: buildGradientRing(),
          )
        : buildGradientRing();
  }

  Widget buildGradientRing() {
    double outerCircleSize = 40.v; // Size of the outer circle
    double innerCircleSize = 40.v; // Size of the inner circle

    return Container(
      height: outerCircleSize,
      width: outerCircleSize,
      margin: margin,
      decoration: decoration,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Outer ring (gradient)
          Container(
            width: outerCircleSize,
            height: outerCircleSize,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment(-3, -3),
                end: Alignment(0, -3),
                colors: [
                  appTheme.amber900,
                  appTheme.whiteA700.withOpacity(0),
                  appTheme.amber900,
                ],
              ),
            ),
          ),
          // Inner circle with percentage
          Container(
            width: innerCircleSize,
            height: innerCircleSize,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white, // Adjust the color as needed
            ),
            child: Center(
              child: Text(
                text,
                style: buttonTextStyle ?? theme.textTheme.headlineSmall,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

