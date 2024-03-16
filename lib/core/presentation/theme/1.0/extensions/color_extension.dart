import 'package:flutter/material.dart';

import '../1.0.dart';



///
/// Theme extensions for colors on BuildContext
///
extension ColorThemeContextExtension on BuildContext {
  /// Returns the [IColorPalette] implementation based on current theme
  /// brightness associated to the current context
  IColorPalette get colorPalette {
    final type = ThemeType.fromBrightness(Theme.of(this).colorScheme.brightness);
    return AppTheme.instance.colorPalette(type);
  }

  /// Get inverted Color Palette, according to current brightness
  IColorPalette get invertedColorPalette {
    final type = ThemeType.fromBrightness(Theme.of(this).colorScheme.brightness.inverted);
    return AppTheme.instance.colorPalette(type);
  }

  /// Returns the color palette definition for background surfaces.
  IBackgroundColorPalette get backgroundPalette =>
      colorPalette.backgroundPalette;

  /// Returns the color palette definition for texts, icons and graphic
  /// elements, based in the current theme, associated to context.
  IForegroundColorPalette get foreground => colorPalette.foreground;

}
