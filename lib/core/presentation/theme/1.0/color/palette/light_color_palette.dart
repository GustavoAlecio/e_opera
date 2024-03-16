import 'package:flutter/material.dart';

import '../color.dart';

/// Light color palette
class LightColorPalette implements IColorPalette {
  @override
  IBackgroundColorPalette get backgroundPalette => LightBackgroundColorPalette();
  @override
  IForegroundColorPalette get foreground => LightForeground();
  @override
  MaterialColor get base => const MaterialColor(
        0xffFAFBFF,
        {
          50: Color(0xffFAFBFF),
          100: Color(0xffF0F1F5),
          200: Color(0xffDDDEE4),
          300: Color(0xffBCBEC8),
          400: Color(0xff9194A3),
          500: Color(0xff636779),
          600: Color(0xff3E4256),
          700: Color(0xff24283E),
          800: Color(0xff12162C),
          900: Color(0xff050922),
        },
      );

  @override
  MaterialColor get primary => const MaterialColor(
        0xff00A6FB,
        {
          50: Color(0xffFAFBFF),
          100: Color(0xff99DDFF),
          200: Color(0xff33BBFF),
          300: Color(0xff00A6FB),
          400: Color(0xff0582CA),
          500: Color(0xff0373AF),
          600: Color(0xff006494),
          700: Color(0xff004D74),
          800: Color(0xff003554),
          900: Color(0xff051923),
        },
      );

  @override
  MaterialColor get secondary => const MaterialColor(
        0xffFAFBFF,
        {
          50: Color(0xffFAFBFF),
          100: Color(0xffF0F1F5),
          200: Color(0xffDDDEE4),
          300: Color(0xffBCBEC8),
          400: Color(0xff9194A3),
          500: Color(0xff636779),
          600: Color(0xff3E4256),
          700: Color(0xff24283E),
          800: Color(0xff12162C),
          900: Color(0xff050922),
        },
      );

  @override
  MaterialColor get tertiary => const MaterialColor(
        0xffFAFBFF,
        {
          50: Color(0xffFAFBFF),
          100: Color(0xffF0F1F5),
          200: Color(0xffDDDEE4),
          300: Color(0xffBCBEC8),
          400: Color(0xff9194A3),
          500: Color(0xff636779),
          600: Color(0xff3E4256),
          700: Color(0xff24283E),
          800: Color(0xff12162C),
          900: Color(0xff050922),
        },
      );
  @override
  MaterialColor get deepOrange => const MaterialColor(
        0xffFAFBFF,
        {
          50: Color(0xffFAFBFF),
          100: Color(0xffF0F1F5),
          200: Color(0xffDDDEE4),
          300: Color(0xffBCBEC8),
          400: Color(0xff9194A3),
          500: Color(0xff636779),
          600: Color(0xff3E4256),
          700: Color(0xff24283E),
          800: Color(0xff12162C),
          900: Color(0xff050922),
        },
      );
}
