import 'package:flutter/material.dart';

import '../../core.dart';

/// Theme Factory
abstract class ThemeFactory {
  ///
  static ThemeData buildFor(ThemeType type) {
    return switch (type) {
      ThemeType.light => _buildLight(),
      ThemeType.dark => _buildDark(),
    };
  }

  static ThemeData _buildLight() {
    AppTheme.instance.buildAndSet(
      ThemeType.light,
      colorPalette: LightColorPalette(),
      invertedForeground: DarkForeground(),
      brightness: Brightness.light,
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
    );

    return AppTheme.instance.get(ThemeType.light);
  }

  static ThemeData _buildDark() {
    AppTheme.instance.buildAndSet(
      ThemeType.dark,
      colorPalette: DarkColorPalette(),
      invertedForeground: LightForeground(),
      brightness: Brightness.dark,
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
    );

    return AppTheme.instance.get(ThemeType.dark);
  }
}
