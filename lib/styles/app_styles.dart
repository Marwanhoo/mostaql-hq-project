import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mostaql_hq_project/colors/app_colors.dart';

class AppStyles {
  static TextStyle style14White = const TextStyle(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.w500,
  );
  static TextStyle style14Black =  const TextStyle(
    // color: AppColors.blackColorText,
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );

  static TextStyle style12 =  const TextStyle(
      color: Colors.white,
      fontSize: 12,
      fontWeight: FontWeight.w500,
  );
  static TextStyle style12Brown =  TextStyle(
    color: AppColors.brownColor,
    fontSize: 12,
    fontWeight: FontWeight.w500,

  );

  static TextStyle style12ColorGrey2 =  TextStyle(
    color: AppColors.greyColor2,
    fontSize: 12,
  );

  static TextStyle style13 = const TextStyle(
    color: Colors.black,
      fontSize: 13,
      fontWeight: FontWeight.w600,

  );
  static TextStyle style13Primary = TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w600,
      color: AppColors.primaryColor,

  );

  // DM Sana
  static TextStyle style16dmBold = GoogleFonts.dmSans(
    textStyle: const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 16,
    ),
  );

  static TextStyle style16dm400 = GoogleFonts.dmSans(
    textStyle: const TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 16,
    ),
  );

  static TextStyle style14dm = GoogleFonts.dmSans(
    textStyle: const TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 14,
    ),
  );




}
