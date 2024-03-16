import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core.dart';

/// Theme type
enum ThemeType {
  /// Light Theme
  light,

  /// Dark Theme
  dark;

  /// Theme type from Brightness
  static ThemeType fromBrightness(Brightness brightness) {
    if (brightness == Brightness.light) return light;

    return dark;
  }
}

/// App Theme
class AppTheme {
  AppTheme._();

  /// Value given by designers as the screen width
  static const int designScreenWidth = 375;

  /// Value given by designers as the screen height
  static const int designScreenHeight = 812;

  static final AppTheme _instance = AppTheme._();

  final Map<ThemeType, ThemeData> _themes = {};
  final Map<ThemeType, IColorPalette> _palettes = {};

  /// instance app theme
  static AppTheme get instance => _instance;

  /// Set App theme
  void set(
    ThemeType type, {
    required ThemeData theme,
    required IColorPalette colorPalette,
  }) {
    _themes.putIfAbsent(type, () => theme);
    _palettes.putIfAbsent(type, () => colorPalette);
  }

  /// Checks whether there's a theme instance for the current [type] and,
  /// when necessary, builds and store a new theme instance.
  void buildAndSet(
    ThemeType type, {
    required IColorPalette colorPalette,
    required IForegroundColorPalette invertedForeground,
    required Brightness brightness,
    required Color backgroundColor,
    required Color foregroundColor,
    String? fontFamily,
  }) {
    _themes.putIfAbsent(
      type,
      () => builder(
        colorPalette: colorPalette,
        invertedForeground: invertedForeground,
        brightness: brightness,
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        fontFamily: fontFamily,
      ),
    );
    _palettes.putIfAbsent(type, () => colorPalette);
  }

  /// Get the [ThemeData] corresponding to the [type] informed.
  /// Make sure the theme was previously created with [set] or [buildAndSet] methods.
  ThemeData get(ThemeType type) {
    assert(_themes[type] != null, 'Theme should be initialized first.');
    return _themes[type]!;
  }

  /// Returns the current [IColorPalette] implementation for light theme
  IColorPalette colorPalette(ThemeType type) {
    assert(_palettes[type] != null, 'Theme should be initialized first.');
    return _palettes[type]!;
  }

  ///
  /// Builds a theme, based on the provided colors.
  ///
  ThemeData builder({
    required IColorPalette colorPalette,
    required Brightness brightness,
    required IForegroundColorPalette invertedForeground,

    /// These colors are under revision by the UX team.
    /// They'll see how to put these colors inside our palette.
    /// We're using white(#fff) and dark(#000) by default.
    required Color backgroundColor,
    required Color foregroundColor,
    String? fontFamily,
  }) {
    final foreground = colorPalette.foreground;

    /// Uses old text theme just to get the base definition of some styles.
    final textTheme = TypographyBuilder.buildTextTheme(
      foreground.active,
      invertedForeground.active,
      fontFamily,
    );

    final appTextStyle = TypographyBuilder.buildAppTextStyle(
      textTheme,
      foreground,
      fontFamily,
    );

    return ThemeData(
      useMaterial3: true,
      fontFamily: fontFamily ?? appFontFamily,
      primaryColor: colorPalette.primary,
      brightness: brightness,
      scaffoldBackgroundColor: colorPalette.backgroundPalette.solidSurface,
      cardColor: colorPalette.backgroundPalette.solidSurface,
      canvasColor: Colors.transparent,
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: foreground.active,
      ),
      extensions: [
        appTextStyle,
      ],
      iconTheme: IconThemeData(
        color: foreground.active,
        size: AppFontSize.button.value,
      ),
      appBarTheme: AppBarTheme(
        elevation: 0,
        titleTextStyle: appTextStyle.calloutMedium.copyWith(
          height: AppLineHeight.xs.value,
        ),
        systemOverlayStyle: brightness == Brightness.dark
            ? SystemUiOverlayStyle.light
            : SystemUiOverlayStyle.dark,
        iconTheme: IconThemeData(color: foreground.active),
      ),
      dividerColor: foreground.disabled,
      dividerTheme: DividerThemeData(
        space: 0,
        color: foreground.detail,
      ),
      checkboxTheme: CheckboxThemeData(
        checkColor: MaterialStateProperty.all(
          colorPalette.backgroundPalette.solidSurface,
        ),
        fillColor: MaterialStateProperty.all(foreground.active),
        side: BorderSide(color: foreground.disabled, width: 1.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(Dimension.xxs.value)),
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.all(foreground.active),
        overlayColor: MaterialStateProperty.all(foreground.disabled),
      ),
      disabledColor: foreground.soft,
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1.0,
            color: colorPalette.secondary[50]!,
          ),
          borderRadius: BorderRadius.all(Radius.circular(Dimension.xs.value)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1.0,
            color: colorPalette.secondary[50]!,
          ),
          borderRadius: BorderRadius.all(Radius.circular(Dimension.xs.value)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1.0,
            color: colorPalette.base[700]!,
          ),
          borderRadius: BorderRadius.all(Radius.circular(Dimension.xs.value)),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1.0, color: foreground.soft),
          borderRadius: BorderRadius.all(Radius.circular(Dimension.xs.value)),
        ),
        labelStyle: TextStyle(
          color: foreground.active,
          fontWeight: AppFontWeight.regular.value,
          fontSize: AppFontSize.body1.value,
          height: AppLineHeight.sm.value,
        ),
        hintStyle: TextStyle(
          color: foreground.disabled,
          fontWeight: AppFontWeight.regular.value,
          fontSize: AppFontSize.body1.value,
          height: AppLineHeight.sm.value,
        ),
        helperStyle: TextStyle(
          color: foreground.active,
          fontWeight: AppFontWeight.regular.value,
          fontSize: AppFontSize.caption.value,
          height: AppLineHeight.xs.value,
        ),
        errorStyle: TextStyle(
          color: colorPalette.deepOrange,
          fontWeight: AppFontWeight.regular.value,
          fontSize: AppFontSize.caption.value,
          height: AppLineHeight.xs.value,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          alignment: Alignment.center,
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(
              vertical: Dimension.sm.height,
              horizontal: Dimension.xl.width,
            ),
          ),
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.disabled)) {
              return colorPalette.base[200];
            }
            return colorPalette.base[900];
          }),
          foregroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.disabled)) {
              return foreground.disabled;
            }

            return invertedForeground.active;
          }),
          textStyle: MaterialStateProperty.all(
            appTextStyle.buttonMedium.copyWith(
              height: AppLineHeight.xs.value,
            ),
          ),
          shape: MaterialStateProperty.all(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(40)),
            ),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          alignment: Alignment.center,
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(
              vertical: Dimension.sm.height,
              horizontal: Dimension.xl.width,
            ),
          ),
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          textStyle: MaterialStateProperty.all(
            appTextStyle.buttonMedium.copyWith(
              height: AppLineHeight.xs.value,
            ),
          ),
          side: MaterialStateProperty.all(
            BorderSide(color: foreground.active, width: 1),
          ),
          shape: MaterialStateProperty.all(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(40)),
            ),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          alignment: Alignment.center,
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(
              horizontal: Dimension.xs.width,
              vertical: Dimension.xs.height,
            ),
          ),
          textStyle: MaterialStateProperty.resolveWith((states) {
            return appTextStyle.buttonMedium.copyWith(
              color: states.contains(MaterialState.disabled)
                  ? foreground.soft
                  : foreground.active,
            );
          }),
        ),
      ),
      textTheme: TypographyBuilder.buildTextTheme(
        foreground.active,
        colorPalette.backgroundPalette.solidSurface,
        fontFamily,
      ),
      scrollbarTheme: const ScrollbarThemeData().copyWith(
        thumbColor: MaterialStateProperty.all(colorPalette.foreground.detail),
        thumbVisibility: MaterialStateProperty.all(true),
        radius: Radius.circular(Dimension.md.value),
        thickness: MaterialStateProperty.all(Dimension.xxs.width),
      ),
      chipTheme: ChipThemeData(
        backgroundColor: Colors.transparent,
        padding: EdgeInsets.zero,
        labelPadding: EdgeInsets.symmetric(
          vertical: Dimension.xs.height,
          horizontal: Dimension.sm.width,
        ),
        shape: StadiumBorder(
          side: BorderSide(color: colorPalette.base[200]!),
        ),
        showCheckmark: false,
        labelStyle: appTextStyle.calloutMedium.copyWith(
          /// Figma has 1.5 as line height. With this setting in Flutter,
          /// the text renders decentralized. Changed to 1.0 to fix this.
          height: AppLineHeight.xs.value,
        ),
        selectedColor: foreground.active,
      ),
      tabBarTheme: TabBarTheme(
        labelPadding: EdgeInsets.symmetric(horizontal: Dimension.sm.width),
        dividerColor: Colors.transparent,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(32),
          ),
        ),
        backgroundColor: brightness == Brightness.dark
            ? colorPalette.base.shade200
            : colorPalette.backgroundPalette.solidSurface,
      ),
      colorScheme: ColorScheme(
        primary: foreground.active,
        primaryContainer: foregroundColor,
        secondary: colorPalette.primary[700]!,
        secondaryContainer: colorPalette.primary[700]!,
        surface: colorPalette.backgroundPalette.solidSurface,
        background: colorPalette.backgroundPalette.solidSurface,
        error: colorPalette.deepOrange,
        shadow: Colors.transparent,
        onPrimary: colorPalette.backgroundPalette.solidSurface,
        onSecondary: foreground.active,
        onSurface: foreground.active,
        onBackground: foreground.active,
        onError: colorPalette.backgroundPalette.solidSurface,
        brightness: brightness,
      ),
    );
  }
}
