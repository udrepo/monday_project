import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../config/monday_colors.dart';
import '../config/monday_text_styles.dart';

class GrayButton extends StatelessWidget {
  
  final String text;
  final String icon;
  final VoidCallback onTap;
  
  const GrayButton({
    Key? key, required this.text, required this.icon, required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: MondayColors.kNavBarBgColor,
          borderRadius: BorderRadius.all(Radius.circular(25),),),
        child: Row(
          children: [
            SvgPicture.asset(icon, width: 25, height: 25,),
            const SizedBox(width: 20,),
            Text(text, style: MondayTS.blackS20W600,)
          ],
        ),
      ),
    );
  }
}