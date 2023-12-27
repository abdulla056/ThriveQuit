import 'package:flutter/material.dart';
import 'package:thrive_quit_application/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillAmber => BoxDecoration(
        color: appTheme.amber900,
      );
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black90001,
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray50,
      );
  static BoxDecoration get fillBluegray100 => BoxDecoration(
        color: appTheme.blueGray100,
      );
  static BoxDecoration get fillBluegray5001 => BoxDecoration(
        color: appTheme.blueGray5001,
      );
  static BoxDecoration get fillDeepOrange => BoxDecoration(
        color: appTheme.deepOrange50,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray300,
      );
  static BoxDecoration get fillGray100 => BoxDecoration(
        color: appTheme.gray100,
      );
  static BoxDecoration get fillGrayD => BoxDecoration(
        color: appTheme.gray300D8,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillPrimary1 => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.41),
      );
  static BoxDecoration get fillPrimary2 => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.57),
      );
  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red100,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.35),
      );

  // Gradient decorations
  static BoxDecoration get gradientAmberToAmber => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.amber900,
            appTheme.amber900.withOpacity(0.66),
          ],
        ),
      );
  static BoxDecoration get gradientAmberToAmber900 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.amber900,
            appTheme.amber900.withOpacity(0.73),
          ],
        ),
      );
  static BoxDecoration get gradientAmberToAmber9001 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.amber900,
            appTheme.amber900.withOpacity(0.7),
          ],
        ),
      );
  static BoxDecoration get gradientAmberToDeepOrange => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0.06),
          end: Alignment(1.11, 0.15),
          colors: [
            appTheme.amber90001,
            appTheme.orange300,
            appTheme.deepOrange200,
          ],
        ),
      );
  static BoxDecoration get gradientAmberToDeepOrangeA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.amber900,
            appTheme.deepOrangeA10077,
          ],
        ),
      );
  static BoxDecoration get gradientDeepOrangeToYellow => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.deepOrange300,
            appTheme.yellow900,
          ],
        ),
      );
  static BoxDecoration get gradientOrangeToAmber => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.orange900,
            appTheme.amber900.withOpacity(0.66),
          ],
        ),
      );
  static BoxDecoration get gradientRedToRed => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0.5),
          end: Alignment(0.5, 1.19),
          colors: [
            appTheme.red600,
            appTheme.red200,
          ],
        ),
      );
  static BoxDecoration get gradientRedToRed30001 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.red800,
            appTheme.red30001,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outline => BoxDecoration(
        color: appTheme.whiteA700,
      );
  static BoxDecoration get outlineAmber => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.amber900,
          width: 3.h,
        ),
      );
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.orangeA200,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack90001 => BoxDecoration(
        color: appTheme.yellow90003,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900011 => BoxDecoration(
        color: appTheme.yellow90005,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900012 => BoxDecoration(
        color: appTheme.yellow90002,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900013 => BoxDecoration(
        color: appTheme.yellow90006,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900014 => BoxDecoration(
        color: appTheme.red900,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.5),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900015 => BoxDecoration(
        color: theme.colorScheme.primary,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900016 => BoxDecoration(
        color: appTheme.orangeA20003,
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
  static BoxDecoration get outlineBlack900017 => BoxDecoration(
        color: appTheme.orangeA200,
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
  static BoxDecoration get outlineGray => BoxDecoration(
        border: Border.all(
          color: appTheme.gray900.withOpacity(0.15),
          width: 1.h,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder115 => BorderRadius.circular(
        115.h,
      );
  static BorderRadius get circleBorder129 => BorderRadius.circular(
        129.h,
      );
  static BorderRadius get circleBorder145 => BorderRadius.circular(
        145.h,
      );
  static BorderRadius get circleBorder152 => BorderRadius.circular(
        152.h,
      );
  static BorderRadius get circleBorder41 => BorderRadius.circular(
        41.h,
      );
  static BorderRadius get circleBorder90 => BorderRadius.circular(
        90.h,
      );

  // Custom borders
  static BorderRadius get customBorderBL5 => BorderRadius.vertical(
        bottom: Radius.circular(5.h),
      );
  static BorderRadius get customBorderTL10 => BorderRadius.vertical(
        top: Radius.circular(10.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder13 => BorderRadius.circular(
        13.h,
      );
  static BorderRadius get roundedBorder17 => BorderRadius.circular(
        17.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder5 => BorderRadius.circular(
        5.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
