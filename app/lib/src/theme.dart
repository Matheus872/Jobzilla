import 'package:flutter/material.dart';

class AppColors {
  //Light theme
  static const light_background = Color(0xffff5f5f5);
  static const light_foreground = Color(0xfffBDBDBD);
  static const light_primary = Color(0xfff869cb8);
  static const light_primaryDark = Color(0xfff2c3c5b);
  static const light_primaryLight = Color(0xfffebebeb);
  static const light_accent = Color(0xfff0ac5a8);

  static const light_textIcons = Color(0xfffffffff);
  static const light_primaryText = Color(0xfff212121);
  static const light_secondaryText = Color(0xfff757575);
  static const light_divider = Color(0xfffBDBDBD);

  //Dark theme
  static const dark_background = Color(0xfff090f13);
  static const dark_foreground = Color(0xfff14181b);
  static const dark_primary = Color(0xfff4B39EF);
  static const dark_primaryDark = Color(0xfff372ab4);
  static const dark_primaryLight = Color(0xfff7a63ff);
  static const dark_accent = Color(0xfff3AD6F0);

  static const dark_textIcons = Color(0xfff616e78);
  static const dark_primaryText = Color(0xffffefefe);
  static const dark_secondaryText = Color(0xfff57636C);
  static const dark_divider = Color(0xfffBDBDBD);

  //auxiliar collors
  static const white = Color(0xfffffffff);
  static const black = Color(0xfff000000);
}

TextStyle get _headline1 => const TextStyle(
      fontSize: 28,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.italic,
      color: AppColors.dark_primaryText,
    );

TextStyle get _subtitle1 => const TextStyle(
      fontSize: 22,
      fontFamily: 'Questrial',
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.italic,
      color: AppColors.dark_primaryText,
    );

TextStyle get _bodytext1 => const TextStyle(
      fontSize: 12,
      fontFamily: 'Nunito',
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.italic,
      color: AppColors.dark_primaryText,
    );

TextStyle get _caption => const TextStyle(
      fontSize: 12,
      fontFamily: 'Nunito',
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.italic,
      color: AppColors.dark_primaryText,
    );

TextStyle get _overline => const TextStyle(
      fontSize: 12,
      fontFamily: 'Questrial',
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.italic,
      color: AppColors.dark_primaryText,
    );

TextStyle get _bodyText2 => const TextStyle(
      fontSize: 14,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
      color: AppColors.dark_divider,
    );

ThemeData getLightTheme() {
  final light = ThemeData.light().copyWith(
    colorScheme: const ColorScheme.light().copyWith(
      background: AppColors.light_background,
      primary: AppColors.light_accent,
      onPrimary: AppColors.black,
      primaryContainer: AppColors.light_primaryDark,
      onPrimaryContainer: AppColors.light_primaryText,
      secondary: AppColors.light_secondaryText,
      tertiary: AppColors.light_primary,
      onTertiary: AppColors.light_textIcons,
      onBackground: AppColors.light_foreground,
      surface: AppColors.light_primaryText,
      surfaceVariant: AppColors.light_secondaryText,
    ),
    textTheme: const TextTheme(
      bodyText2: TextStyle(
        fontSize: 14,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.normal,
        color: AppColors.dark_secondaryText,
      ),
      subtitle2: TextStyle(
        fontSize: 16,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.normal,
        color: AppColors.light_primaryText,
      ),
      labelMedium: TextStyle(
          fontSize: 14,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          color: AppColors.dark_secondaryText),
      overline: TextStyle(
          fontSize: 14,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          color: AppColors.dark_secondaryText),
    ),
  );

  return light;
}

ThemeData getDarkTheme() {
  final dark = ThemeData.dark().copyWith(
    colorScheme: const ColorScheme.dark().copyWith(
      background: AppColors.dark_background,
      primary: AppColors.dark_primary,
      onPrimary: AppColors.dark_textIcons,
      primaryContainer: AppColors.dark_primaryDark,
      onPrimaryContainer: AppColors.dark_primaryText,
      secondary: AppColors.dark_secondaryText,
      tertiary: AppColors.dark_accent,
      onTertiary: AppColors.dark_textIcons,
      onBackground: AppColors.dark_foreground,
      surface: AppColors.white,
      surfaceVariant: AppColors.dark_secondaryText,
    ),
    textTheme: const TextTheme(
      bodyText2: TextStyle(
        fontSize: 14,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.normal,
        color: AppColors.dark_secondaryText,
      ),
      subtitle2: TextStyle(
        fontSize: 16,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.normal,
        color: AppColors.white,
      ),
      labelMedium: TextStyle(
          fontFamily: 'Poppins', fontSize: 14, color: AppColors.white),
      overline: TextStyle(
          fontSize: 14,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          color: AppColors.dark_secondaryText),
    ),
  );
  return dark;
}
