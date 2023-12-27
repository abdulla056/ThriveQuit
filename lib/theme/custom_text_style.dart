import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMediumAmber900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.amber900,
      );
  static get bodyMediumBlack90001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black90001.withOpacity(0.78),
        fontSize: 13.fSize,
      );
  static get bodyMediumGray900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray900,
        fontSize: 13.fSize,
      );
  // Display text style
  static get displayLargeGray80001 => theme.textTheme.displayLarge!.copyWith(
        color: appTheme.gray80001,
      );
  static get displayMedium45 => theme.textTheme.displayMedium!.copyWith(
        fontSize: 45.fSize,
      );
  static get displayMediumBlack90001 => theme.textTheme.displayMedium!.copyWith(
        color: appTheme.black90001,
      );
  static get displayMediumGray80001 => theme.textTheme.displayMedium!.copyWith(
        color: appTheme.gray80001,
        fontSize: 45.fSize,
        fontWeight: FontWeight.w500,
      );
  static get displayMediumYellow90001 =>
      theme.textTheme.displayMedium!.copyWith(
        color: appTheme.yellow90001,
        fontWeight: FontWeight.w500,
      );
  static get displaySmallWhiteA700 => theme.textTheme.displaySmall!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 35.fSize,
      );
  // Headline text style
  static get headlineLargeBlack90001 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w700,
      );
  static get headlineLargeBold => theme.textTheme.headlineLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get headlineLargeOrangeA20002 =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.orangeA20002,
        fontSize: 30.fSize,
      );
  static get headlineLargeOrangeA700 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.orangeA700,
        fontSize: 30.fSize,
      );
  static get headlineLargeWhiteA700 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 30.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineMediumGray900 => theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.gray900.withOpacity(0.63),
      );
  static get headlineMediumGray90001 =>
      theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.gray90001.withOpacity(0.63),
        fontSize: 27.fSize,
      );
  static get headlineMediumYellow90001 =>
      theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.yellow90001,
        fontWeight: FontWeight.w500,
      );
  static get headlineSmallBlack90001 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black90001,
      );
  static get headlineSmallMedium => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get headlineSmallOrangeA200 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.orangeA200,
        fontSize: 24.fSize,
        fontWeight: FontWeight.w500,
      );
  static get headlineSmallWhiteA700 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w500,
      );
  static get headlineSmallWhiteA700Medium =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 24.fSize,
        fontWeight: FontWeight.w500,
      );
  static get headlineSmallWhiteA700_1 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.whiteA700,
      );
  static get headlineSmallWhiteA700_2 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.whiteA700.withOpacity(0.69),
      );
  // Label text style
  static get labelLargeDMSansAmber900 =>
      theme.textTheme.labelLarge!.dMSans.copyWith(
        color: appTheme.amber900,
      );
  static get labelLargeDMSansBlack900 =>
      theme.textTheme.labelLarge!.dMSans.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeDMSansBluegray90003 =>
      theme.textTheme.labelLarge!.dMSans.copyWith(
        color: appTheme.blueGray90003,
      );
  static get labelLargeDMSansGray50 =>
      theme.textTheme.labelLarge!.dMSans.copyWith(
        color: appTheme.gray50,
      );
  static get labelLargeDMSansGray600 =>
      theme.textTheme.labelLarge!.dMSans.copyWith(
        color: appTheme.gray600,
      );
  static get labelLargeDMSansGray700 =>
      theme.textTheme.labelLarge!.dMSans.copyWith(
        color: appTheme.gray700,
      );
  static get labelLargeDMSansGray800 =>
      theme.textTheme.labelLarge!.dMSans.copyWith(
        color: appTheme.gray800,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeDMSansGray900 =>
      theme.textTheme.labelLarge!.dMSans.copyWith(
        color: appTheme.gray900.withOpacity(0.42),
        fontWeight: FontWeight.w700,
      );
  static get labelLargeDMSansGray90001 =>
      theme.textTheme.labelLarge!.dMSans.copyWith(
        color: appTheme.gray90001,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeDMSansGray900Bold =>
      theme.textTheme.labelLarge!.dMSans.copyWith(
        color: appTheme.gray900.withOpacity(0.5),
        fontWeight: FontWeight.w700,
      );
  static get labelLargeDMSansGray900Bold_1 =>
      theme.textTheme.labelLarge!.dMSans.copyWith(
        color: appTheme.gray900.withOpacity(0.63),
        fontWeight: FontWeight.w700,
      );
  static get labelLargeDMSansGray900Bold_2 =>
      theme.textTheme.labelLarge!.dMSans.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeDMSansGray900_1 =>
      theme.textTheme.labelLarge!.dMSans.copyWith(
        color: appTheme.gray900.withOpacity(0.63),
      );
  static get labelLargeDMSansGray900_2 =>
      theme.textTheme.labelLarge!.dMSans.copyWith(
        color: appTheme.gray900.withOpacity(0.8),
      );
  static get labelLargeDMSansGray900_3 =>
      theme.textTheme.labelLarge!.dMSans.copyWith(
        color: appTheme.gray900.withOpacity(0.56),
      );
  static get labelLargeDMSansGray900_4 =>
      theme.textTheme.labelLarge!.dMSans.copyWith(
        color: appTheme.gray900,
      );
  static get labelLargeDMSansGreen8008e =>
      theme.textTheme.labelLarge!.dMSans.copyWith(
        color: appTheme.green8008e,
      );
  static get labelLargeDMSansOrangeA200 =>
      theme.textTheme.labelLarge!.dMSans.copyWith(
        color: appTheme.orangeA200,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeDMSansOrangeA200Bold =>
      theme.textTheme.labelLarge!.dMSans.copyWith(
        color: appTheme.orangeA200,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeDMSansWhiteA700 =>
      theme.textTheme.labelLarge!.dMSans.copyWith(
        color: appTheme.whiteA700.withOpacity(0.78),
      );
  static get labelLargeDMSansWhiteA700Bold =>
      theme.textTheme.labelLarge!.dMSans.copyWith(
        color: appTheme.whiteA700.withOpacity(0.78),
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeDMSansWhiteA700Bold_1 =>
      theme.textTheme.labelLarge!.dMSans.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumBlack90001 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black90001,
      );
  static get labelMediumBlack9000110 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black90001,
        fontSize: 10.fSize,
      );
  static get labelMediumGray600 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray600,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumGray900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray900.withOpacity(0.42),
        fontSize: 10.fSize,
      );
  static get labelMediumWhiteA700 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 10.fSize,
      );
  static get labelMediumWhiteA700Medium =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumWhiteA700_1 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.whiteA700.withOpacity(0.78),
      );
  static get labelSmallBlack90001 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w700,
      );
  static get labelSmallBluegray90003 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.blueGray90003,
        fontWeight: FontWeight.w700,
      );
  static get labelSmallGray600 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.gray600,
      );
  static get labelSmallGray90001 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.gray90001.withOpacity(0.63),
        fontWeight: FontWeight.w700,
      );
  static get labelSmallRed50 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.red50,
        fontWeight: FontWeight.w700,
      );
  static get labelSmallWhiteA700 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  // Title text style
  static get titleLargeBlack90001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black90001,
      );
  static get titleLargeBlack90001Regular =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeBlack90001_1 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black90001,
      );
  static get titleLargeGray900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray900.withOpacity(0.83),
        fontWeight: FontWeight.w500,
      );
  static get titleLargeGray900Medium => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeGray900_1 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray900,
      );
  static get titleLargeGray900_2 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray900,
      );
  static get titleLargeOrangeA20001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.orangeA20001,
      );
  static get titleLargeRed60001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.red60001,
      );
  static get titleLargeWhiteA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleLargeWhiteA700Medium => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 21.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeWhiteA700Medium_1 =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeWhiteA700Regular => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeYellow90004 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.yellow90004,
      );
  static get titleMediumBlack90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90001.withOpacity(0.68),
      );
  static get titleMediumBlack9000118 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90001.withOpacity(0.8),
        fontSize: 18.fSize,
      );
  static get titleMediumGray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray900.withOpacity(0.63),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumGray900_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray900,
      );
  static get titleMediumMontserrat => theme.textTheme.titleMedium!.montserrat;
  static get titleMediumOrangeA200 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.orangeA200,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700.withOpacity(0.8),
        fontSize: 18.fSize,
      );
  static get titleSmallAmber900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.amber900,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBlack90001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black90001.withOpacity(0.4),
      );
  static get titleSmallBlack90001Medium => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBlack90001Medium_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBlack90001_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black90001.withOpacity(0.68),
      );
  static get titleSmallBluegray900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 14.fSize,
      );
  static get titleSmallBluegray90001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray90001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGray900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray900.withOpacity(0.8),
        fontSize: 14.fSize,
      );
  static get titleSmallGray90001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90001,
        fontSize: 14.fSize,
      );
  static get titleSmallGray900Medium => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray900,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGray900Medium_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGray900_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray900.withOpacity(0.42),
      );
  static get titleSmallRedA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.redA700,
      );
  static get titleSmallWhiteA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleSmallWhiteA70014 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 14.fSize,
      );
  static get titleSmallWhiteA700Medium => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallWhiteA700_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700.withOpacity(0.78),
      );
}

extension on TextStyle {
  TextStyle get dMSans {
    return copyWith(
      fontFamily: 'DM Sans',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }
}
