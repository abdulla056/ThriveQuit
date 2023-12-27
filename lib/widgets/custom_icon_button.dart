import 'package:flutter/material.dart';
import 'package:thrive_quit_application/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: appTheme.orangeA20003,
                  borderRadius: BorderRadius.circular(10.h),
                  boxShadow: [
                    BoxShadow(
                      color: appTheme.black90001.withOpacity(0.25),
                      spreadRadius: 2.h,
                      blurRadius: 2.h,
                      offset: Offset(
                        0,
                        3,
                      ),
                    ),
                  ],
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillOrange => BoxDecoration(
        color: appTheme.orange90001,
        borderRadius: BorderRadius.circular(28.h),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray900,
        borderRadius: BorderRadius.circular(12.h),
      );
  static BoxDecoration get outlineBlackTL14 => BoxDecoration(
        color: appTheme.blueGray100,
        borderRadius: BorderRadius.circular(14.h),
        border: Border.all(
          color: appTheme.black90001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBlackTL16 => BoxDecoration(
        color: appTheme.orangeA200.withOpacity(0.7),
        borderRadius: BorderRadius.circular(16.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              2,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlackTL161 => BoxDecoration(
        color: appTheme.orangeA200,
        borderRadius: BorderRadius.circular(16.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              2,
            ),
          ),
        ],
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(16.h),
      );
}
