import 'package:flutter/material.dart';

import '../../../../core.dart';

/// Typography builder
abstract class TypographyBuilder {
  /// Build app text style
  static AppTextStyle buildAppTextStyle(
    TextTheme baseTheme,
    IForegroundColorPalette foreground, [
    String? fontFamily,
  ]) {
    final family = fontFamily ?? appFontFamily;

    return AppTextStyle(
      captionLight: baseTheme.bodySmall!.copyWith(
        fontWeight: AppFontWeight.light.value,
        fontFamily: family,
        letterSpacing: 0,
      ),
      caption: baseTheme.bodySmall!.copyWith(
        fontWeight: AppFontWeight.regular.value,
        fontFamily: family,
        letterSpacing: 0,
      ),
      captionMedium: baseTheme.bodySmall!.copyWith(
        fontWeight: AppFontWeight.medium.value,
        fontFamily: family,
        letterSpacing: 0,
      ),
      captionBold: baseTheme.bodySmall!.copyWith(
        fontWeight: AppFontWeight.bold.value,
        fontFamily: family,
        letterSpacing: 0,
      ),
      buttonLight: baseTheme.labelLarge!.copyWith(
        fontWeight: AppFontWeight.light.value,
        height: AppLineHeight.xs.value,
        leadingDistribution: TextLeadingDistribution.even,
        fontFamily: family,
        letterSpacing: 0,
      ),
      button: baseTheme.labelLarge!.copyWith(
        fontWeight: AppFontWeight.regular.value,
        height: AppLineHeight.xs.value,
        leadingDistribution: TextLeadingDistribution.even,
        fontFamily: family,
        letterSpacing: 0,
      ),
      buttonMedium: baseTheme.labelLarge!.copyWith(
        fontWeight: AppFontWeight.medium.value,
        height: AppLineHeight.xs.value,
        leadingDistribution: TextLeadingDistribution.even,
        fontFamily: family,
        letterSpacing: 0,
      ),
      buttonBold: baseTheme.labelLarge!.copyWith(
        fontWeight: AppFontWeight.bold.value,
        height: AppLineHeight.xs.value,
        leadingDistribution: TextLeadingDistribution.even,
        fontFamily: family,
        letterSpacing: 0,
      ),
      calloutLight: TextStyle(
        fontSize: AppFontSize.callout.value,
        fontWeight: AppFontWeight.light.value,
        color: foreground.active,
        height: AppLineHeight.md.value,
        fontFamily: family,
        letterSpacing: 0,
      ),
      callout: TextStyle(
        fontSize: AppFontSize.callout.value,
        fontWeight: AppFontWeight.regular.value,
        color: foreground.active,
        height: AppLineHeight.md.value,
        fontFamily: family,
        letterSpacing: 0,
      ),
      calloutMedium: TextStyle(
        fontSize: AppFontSize.callout.value,
        fontWeight: AppFontWeight.medium.value,
        color: foreground.active,
        height: AppLineHeight.md.value,
        fontFamily: family,
        letterSpacing: 0,
      ),
      calloutBold: TextStyle(
        fontSize: AppFontSize.callout.value,
        fontWeight: AppFontWeight.bold.value,
        color: foreground.active,
        height: AppLineHeight.md.value,
        fontFamily: family,
        letterSpacing: 0,
      ),
      body2Light: baseTheme.bodyMedium!.copyWith(
        fontSize: AppFontSize.body2.value,
        fontWeight: AppFontWeight.light.value,
        fontFamily: family,
        letterSpacing: 0,
      ),
      body2: baseTheme.bodyMedium!.copyWith(
        fontSize: AppFontSize.body2.value,
        fontWeight: AppFontWeight.regular.value,
        fontFamily: family,
        letterSpacing: 0,
      ),
      body2Medium: baseTheme.bodyMedium!.copyWith(
        fontSize: AppFontSize.body2.value,
        fontWeight: AppFontWeight.medium.value,
        fontFamily: family,
        letterSpacing: 0,
      ),
      body2Bold: baseTheme.bodyMedium!.copyWith(
        fontSize: AppFontSize.body2.value,
        fontWeight: AppFontWeight.bold.value,
        fontFamily: family,
        letterSpacing: 0,
      ),
      body1Light: baseTheme.bodyLarge!.copyWith(
        fontWeight: AppFontWeight.light.value,
        fontFamily: family,
        letterSpacing: 0,
      ),
      body1: baseTheme.bodyLarge!.copyWith(
        fontWeight: AppFontWeight.regular.value,
        fontFamily: family,
        letterSpacing: 0,
      ),
      body1Medium: baseTheme.bodyLarge!.copyWith(
        fontWeight: AppFontWeight.medium.value,
        fontFamily: family,
        letterSpacing: 0,
      ),
      body1Bold: baseTheme.bodyLarge!.copyWith(
        fontWeight: AppFontWeight.bold.value,
        fontFamily: family,
        letterSpacing: 0,
      ),
      h3Light: baseTheme.displaySmall!.copyWith(
        fontWeight: AppFontWeight.light.value,
        fontFamily: family,
        letterSpacing: 0,
      ),
      h3: baseTheme.displaySmall!.copyWith(
        fontWeight: AppFontWeight.regular.value,
        fontFamily: family,
        letterSpacing: 0,
      ),
      h3Medium: baseTheme.displaySmall!.copyWith(
        fontWeight: AppFontWeight.medium.value,
        fontFamily: family,
        letterSpacing: 0,
      ),
      h3Bold: baseTheme.displaySmall!.copyWith(
        fontWeight: AppFontWeight.bold.value,
        fontFamily: family,
        letterSpacing: 0,
      ),
      h2Light: baseTheme.displayMedium!.copyWith(
        fontWeight: AppFontWeight.light.value,
        fontFamily: family,
        letterSpacing: 0,
      ),
      h2: baseTheme.displayMedium!.copyWith(
        fontWeight: AppFontWeight.regular.value,
        fontFamily: family,
        letterSpacing: 0,
      ),
      h2Medium: baseTheme.displayMedium!.copyWith(
        fontWeight: AppFontWeight.medium.value,
        fontFamily: family,
        letterSpacing: 0,
      ),
      h2Bold: baseTheme.displayMedium!.copyWith(
        fontWeight: AppFontWeight.bold.value,
        fontFamily: family,
        letterSpacing: 0,
      ),
      h1Light: baseTheme.displayLarge!.copyWith(
        fontWeight: AppFontWeight.light.value,
        fontFamily: family,
        letterSpacing: 0,
      ),
      h1: baseTheme.displayLarge!.copyWith(
        fontWeight: AppFontWeight.regular.value,
        fontFamily: family,
        letterSpacing: 0,
      ),
      h1Medium: baseTheme.displayLarge!.copyWith(
        fontWeight: AppFontWeight.medium.value,
        fontFamily: family,
        letterSpacing: 0,
      ),
      h1Bold: baseTheme.displayLarge!.copyWith(
        fontWeight: AppFontWeight.bold.value,
        fontFamily: family,
        letterSpacing: 0,
      ),
    );
  }
  /// Build text theme
  static TextTheme buildTextTheme(
    Color textColor,
    Color invertedColor, [
    String? fontFamily,
  ]) =>
      TextTheme(
        titleMedium: TextStyle(
          fontSize: AppFontSize.body1.value,
          fontWeight: AppFontWeight.regular.value,
          color: textColor,
          height: AppLineHeight.sm.value,
          fontFamily: fontFamily,
        ),
        displayLarge: TextStyle(
          fontSize: AppFontSize.headline1.value,
          fontWeight: AppFontWeight.bold.value,
          color: textColor,
          height: AppLineHeight.sm.value,
          fontFamily: fontFamily,
        ),
        displayMedium: TextStyle(
          fontSize: AppFontSize.headline2.value,
          fontWeight: AppFontWeight.bold.value,
          color: textColor,
          height: AppLineHeight.sm.value,
          fontFamily: fontFamily,
        ),
        displaySmall: TextStyle(
          fontSize: AppFontSize.headline3.value,
          fontWeight: AppFontWeight.bold.value,
          color: textColor,
          height: AppLineHeight.sm.value,
          fontFamily: fontFamily,
        ),
        bodyLarge: TextStyle(
          fontSize: AppFontSize.body1.value,
          fontWeight: AppFontWeight.bold.value,
          color: textColor,
          height: AppLineHeight.sm.value,
          fontFamily: fontFamily,
        ),
        bodyMedium: TextStyle(
          fontSize: AppFontSize.callout.value,
          fontWeight: AppFontWeight.bold.value,
          color: textColor,
          height: AppLineHeight.sm.value,
          fontFamily: fontFamily,
        ),
        labelLarge: TextStyle(
          fontSize: AppFontSize.button.value,
          fontWeight: AppFontWeight.medium.value,
          color: invertedColor,
          height: AppLineHeight.sm.value,
          fontFamily: fontFamily,
        ),
        bodySmall: TextStyle(
          fontSize: AppFontSize.caption.value,
          fontWeight: AppFontWeight.bold.value,
          color: textColor,
          height: AppLineHeight.sm.value,
          fontFamily: fontFamily,
        ),
      );
}
