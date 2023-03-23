import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:monday_project/config/monday_colors.dart';

AppBarTheme _appBarTheme = AppBarTheme(
  backgroundColor: Colors.transparent,
  elevation: 0.0,
  // iconTheme: IconThemeData(
  //   color: EvrikaColors.kPrimaryColor,
  // ),
  // titleTextStyle: EvrikaTextStyles.blackS13W500,
);

ElevatedButtonThemeData _elevatedButtonThemeData = ElevatedButtonThemeData(
  style: ButtonStyle(
    elevation: MaterialStateProperty.all(0),
    minimumSize: MaterialStateProperty.all(
      Size(double.infinity, 50),
    ),
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
    ),
    textStyle: MaterialStateProperty.all(
      GoogleFonts.inter(
        textStyle: const TextStyle(
            color: MondayColors.kBlueColor,
            fontSize: 20,
            fontWeight: FontWeight.w400),
      ),
    ),
  ),
);

OutlinedButtonThemeData _outlinedButtonThemeData = OutlinedButtonThemeData(
    style: ButtonStyle(
  side: MaterialStateProperty.all(
    BorderSide(
      color: MondayColors.kBlueColor,
    ),
  ),
  shape: MaterialStateProperty.all(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5),
    ),
  ),
  textStyle: MaterialStateProperty.all(GoogleFonts.inter(
    textStyle: const TextStyle(
        color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
  )),
));

InputDecorationTheme _inputDecorationTheme = InputDecorationTheme(
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(5),
  ),
);

final ThemeData evrikaTheme = ThemeData(
  primarySwatch: MondayColors.themePrimaryColor,
  inputDecorationTheme: _inputDecorationTheme,
   appBarTheme: _appBarTheme,
  textTheme: GoogleFonts.nunitoTextTheme(),
  elevatedButtonTheme: _elevatedButtonThemeData,
  outlinedButtonTheme: _outlinedButtonThemeData,
);
