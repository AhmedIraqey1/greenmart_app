import 'package:flutter/material.dart';
import 'package:greenmart/core/constants/app_fonts.dart';

abstract class TextStyles {
  static const TextStyle headline = TextStyle(
    fontFamily: AppFonts.poppins,
    fontSize: 40,
    fontWeight: FontWeight.w700,
  );
  static const TextStyle title = TextStyle(
    fontFamily: AppFonts.poppins,
    fontSize: 22,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle subtitle = TextStyle(
    fontFamily: AppFonts.poppins,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle body = TextStyle(
    fontFamily: AppFonts.poppins,
    fontSize: 16,
    // fontWeight: FontWeight.w600,
  );
  static const TextStyle caption = TextStyle(
    fontFamily: AppFonts.poppins,
    fontSize: 14,
    // fontWeight: FontWeight.w600,
  );
  static const TextStyle captionB = TextStyle(
    fontFamily: AppFonts.poppins,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle button = TextStyle(
    fontFamily: AppFonts.poppins,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
}
