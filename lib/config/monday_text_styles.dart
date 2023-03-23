import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:monday_project/config/monday_colors.dart';

class MondayTS{
  static final TextStyle blueS24W600 = GoogleFonts.inter(
    textStyle: const TextStyle(
        color: MondayColors.kBlueColor, fontSize: 24,
        fontWeight: FontWeight.w600),
  );

  static final TextStyle blackS24W600 = GoogleFonts.inter(
    textStyle: const TextStyle(
        color: Colors.black, fontSize: 24,
        fontWeight: FontWeight.w600),
  );

  static final TextStyle blackS20W600 = GoogleFonts.inter(
    textStyle: const TextStyle(
        color: Colors.black, fontSize: 20,
        fontWeight: FontWeight.w600),
  );


  static final TextStyle blackS15W400 = GoogleFonts.inter(
    textStyle: const TextStyle(
        color: Colors.black, fontSize: 15,
        fontWeight: FontWeight.w400),
  );

  static final TextStyle whiteS18W400 = GoogleFonts.inter(
    textStyle: const TextStyle(
        color: Colors.white, fontSize: 18,
        fontWeight: FontWeight.w400),
  );

  static final TextStyle whiteS12W400 = GoogleFonts.inter(
    textStyle: const TextStyle(
        color: Colors.white, fontSize: 12,
        fontWeight: FontWeight.w400),
  );
}