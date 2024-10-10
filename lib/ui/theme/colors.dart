import 'package:flutter/material.dart';

class AppColors {
  // Primary Orange
  static const primaryOrange50 = Color(0xfffff8ed);
  static const primaryOrange100 = Color(0xffffefd4);
  static const primaryOrange200 = Color(0xffffdca9);
  static const primaryOrange300 = Color(0xffffc272);
  static const primaryOrange400 = Color(0xfffe9d39);
  static const primaryOrange500 = Color(0xfffd7f12);
  static const primaryOrange600 = Color(0xffee6308);

  // Secondary Blue
  static const secondaryBlue50 = Color(0xfff6f7f9);
  static const secondaryBlue100 = Color(0xffecedf2);
  static const secondaryBlue200 = Color(0xffd4d7e3);
  static const secondaryBlue300 = Color(0xffafb4ca);
  static const secondaryBlue400 = Color(0xff838cad);
  static const secondaryBlue500 = Color(0xff646d93);
  static const secondaryBlue600 = Color(0xff4f567a);
  static const secondaryBlue700 = Color(0xff414763);
  static const secondaryBlue800 = Color(0xff383c54);
  static const secondaryBlue900 = Color(0xff303344);
  static const secondaryBlue950 = Color(0xff22242f);

  // Gray scale
  static const white = Color(0xffFFFFFF);
  static const background50 = Color(0xffFEFEFE);
  static const background100 = Color(0xffFAFAFA);
  static const background200 = Color(0xffEFEFEF);
  static const line50 = Color(0xffF5F5F5);
  static const line100 = Color(0xffE4E4E4);
  static const line200 = Color(0xffD9D9D9);
  static const text50 = Color(0xffBDBDBD);
  static const text100 = Color(0xff9E9E9E);
  static const text200 = Color(0xff616161);
  static const text300 = Color(0xff3D3D3D);
  static const text400 = Color(0xff222222);

  // Semantic
  static const error = Color(0xffFD7563);

  static const lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: AppColors.primaryOrange500,
    onPrimary: AppColors.background50,
    secondary: AppColors.secondaryBlue950,
    onSecondary: AppColors.line50,
    surface: AppColors.background200,
    onSurface: AppColors.text400,
    error: AppColors.error,
    onError: AppColors.white,
  );

  static const darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: AppColors.primaryOrange500,
    onPrimary: AppColors.background50,
    secondary: AppColors.secondaryBlue950,
    onSecondary: AppColors.line50,
    surface: AppColors.background200,
    onSurface: AppColors.text400,
    error: AppColors.error,
    onError: AppColors.white,
  );
}
