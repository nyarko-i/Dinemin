import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';

class AppTextStyles {
  static final heading1 = GoogleFonts.lato(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.textDark,
  );

  static final bodyText = GoogleFonts.lato(
    fontSize: 16,
    color: AppColors.textDark,
  );

  static final buttonText = GoogleFonts.lato(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
}
