import 'package:flutter/material.dart';

///
/// Color palette definition for texts, icons and graphic elements.
///
abstract class IForegroundColorPalette {
  /// Active item color (default color)
  Color get active;

  /// Normal item color
  Color get normal;

  /// Minimal item color
  Color get minimal;

  /// Color for disabled elements
  Color get disabled;

  /// Detail item color
  Color get detail;

  /// Soft item color
  Color get soft;
}
