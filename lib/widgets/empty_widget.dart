import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:monday_project/config/monday_text_styles.dart';

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 150,),
         Center(child: SvgPicture.asset('assets/empty_ill.svg', width: 250,)),
        const SizedBox(height: 50,),
        Text('Мұнда әзірге бос :(', style: MondayTS.blackS20W600,)
      ],
    );
  }
}
