import 'dart:ui';

/// Extensions on [Brightness]
extension BrightnessExtensions on Brightness {
  /// Get the inverted brightness instance
  Brightness get inverted {
    return Brightness.dark == this ? Brightness.light : Brightness.dark;
  }
}
