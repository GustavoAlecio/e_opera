import 'package:flutter/material.dart';

import '../../../../../core.dart';

/// Color Palette
abstract class IColorPalette {
  /// Background surface colors
  IBackgroundColorPalette get backgroundPalette;

  /// Foreground surface colors
  IForegroundColorPalette get foreground;

  /// Base colors
  MaterialColor get base;

  /// Primary colors
  MaterialColor get primary;

  /// Secondary colors
  MaterialColor get secondary;

  /// Tertiary colors
  MaterialColor get tertiary;

  /// Deep orange colors
  MaterialColor get deepOrange;
}
