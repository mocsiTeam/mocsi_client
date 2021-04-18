import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const Color primaryColor = Color(0xff263238);
const Color primaryLightColor = Color(0xff3D484D);
const Color primaryLight2Color = Color(0xffCDCDCD);
const Color primaryDarkColor = Color(0xff000A12);

const Color unselectedColor = Color(0xffDADADA);

const Color secondaryColor = Color(0xff63A4FF);
const Color secondaryDarkColor = Color(0xff004BA0);

const Color surfaceColor = Color(0xffEEEEEE);
const Color backgroundColor = Color(0xffFAFAFA);

const Color redAccentColor = Color(0xffF44336);

const ColorScheme mainColorScheme = ColorScheme(
  primary: primaryColor,
  primaryVariant: primaryLightColor,
  secondary: secondaryColor,
  secondaryVariant: secondaryDarkColor,
  surface: surfaceColor,
  background: backgroundColor,
  error: redAccentColor,
  onPrimary: Colors.white,
  onSecondary: secondaryColor,
  onSurface: surfaceColor,
  onBackground: backgroundColor,
  onError: redAccentColor,
  brightness: Brightness.light,
);
