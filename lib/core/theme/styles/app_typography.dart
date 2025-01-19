import 'package:edstem_machinetest/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

class AppTypography {
  AppTypography._();

// Additonal styles are needed follow the bold guideline below

// medium 500
//semi biold 600
//bold 700
//extra bold 800
//extra extra bold 900
  static const heading3 = TextStyle(
    fontFamily: FontFamily.mulish,
    fontSize: 26,
    fontWeight: FontWeight.w600,
  );
  static const heading4 = TextStyle(
    fontFamily: FontFamily.mulish,
    fontSize: 24,
    fontWeight: FontWeight.w700,
  );
  static const heading5 = TextStyle(
    fontFamily: FontFamily.mulish,
    fontSize: 22,
    fontWeight: FontWeight.w500,
  );
  static const heading6Bold = TextStyle(
    fontFamily: FontFamily.mulish,
    fontSize: 18,
    fontWeight: FontWeight.w700,
  );
  static const heading6SemiBold = TextStyle(
    fontFamily: FontFamily.mulish,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static const bodyNormal = TextStyle(
    fontFamily: FontFamily.mulish,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
  static const bodySemibold = TextStyle(
    fontFamily: FontFamily.mulish,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
  static const bodybold = TextStyle(
    fontFamily: FontFamily.mulish,
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );
  static const bodysmall = TextStyle(
    fontFamily: FontFamily.mulish,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
  static const bodysmallBold = TextStyle(
    fontFamily: FontFamily.mulish,
    fontSize: 14,
    fontWeight: FontWeight.w700,
  );
}
