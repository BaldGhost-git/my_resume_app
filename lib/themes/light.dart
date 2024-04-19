import 'package:flutter/material.dart';

const textColor = Color(0xFF1e1b15);
const backgroundColor = Color(0xFFf9f8f6);
const primaryColor = Color(0xFFbc8ef1);
const primaryFgColor = Color(0xFF1e1b15);
const secondaryColor = Color(0xFFaab2bb);
const secondaryFgColor = Color(0xFF1e1b15);
const accentColor = Color(0xFF7a3733);
const accentFgColor = Color(0xFFf9f8f6);
  
const colorSchemeLight = ColorScheme(
  brightness: Brightness.light,
  background: backgroundColor,
  onBackground: textColor,
  primary: primaryColor,
  onPrimary: primaryFgColor,
  secondary: secondaryColor,
  onSecondary: secondaryFgColor,
  tertiary: accentColor,
  onTertiary: accentFgColor,
  surface: backgroundColor,
  onSurface: textColor,
  error: Brightness.light == Brightness.light ? Color(0xffB3261E) : Color(0xffF2B8B5),
  onError: Brightness.light == Brightness.light ? Color(0xffFFFFFF) : Color(0xff601410),
);