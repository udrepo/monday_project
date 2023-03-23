import 'package:flutter/material.dart';

import '../config/monday_colors.dart';
import '../config/monday_text_styles.dart';

class BigBlueButton extends StatelessWidget {

  final String title;
  final TextStyle textStyle;

  const BigBlueButton({
    Key? key, required this.title, required this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: (){},
        child: Text(
          title, style: textStyle,
        textAlign: TextAlign.center,
        ),
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25), // <-- Radius
            ),
            padding: EdgeInsets.all(20),
            backgroundColor: MondayColors.kBlueColor
        ),
      ),
    );
  }
}