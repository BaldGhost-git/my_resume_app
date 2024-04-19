import 'package:flutter/material.dart';

const textColor = Color(0xFFebe8e2);
const backgroundColor = Color(0xFF080705);
const primaryColor = Color(0xFF49108b);
const primaryFgColor = Color(0xFFebe8e2);
const secondaryColor = Color(0xFF454d56);
const secondaryFgColor = Color(0xFFebe8e2);
const accentColor = Color(0xFFcc8b86);
const accentFgColor = Color(0xFF080705);
  
const colorSchemeDark = ColorScheme(
  brightness: Brightness.dark,
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
  error: Brightness.dark == Brightness.light ? Color(0xffB3261E) : Color(0xffF2B8B5),
  onError: Brightness.dark == Brightness.light ? Color(0xffFFFFFF) : Color(0xff601410),
);