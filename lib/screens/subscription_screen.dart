import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../config/monday_colors.dart';
import '../config/monday_text_styles.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:  Text('Жазылым сатып алу', style: MondayTS.blackS20W600,),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SvgPicture.asset('assets/subscribtion_illustration.svg', height: 410,),
              Text(
                'Жазылым сатып алу',
                style: MondayTS.blackS24W600,
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: MondayColors.kNavBarBgColor,
                  border: Border.all(color: MondayColors.kBlueColor),
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
                child: Row(
                  children: [
                    Text('Толық жазылым бір айға'),
                    Spacer(),
                    Text('4990₸'),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 45,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ))),
                    // style: OutlinedButton.styleFrom(
                    //   side: BorderSide(width: 1.0, color: MondayColors.kGreenColor),
                    // ),
                    child: Text(
                      'Сатып алу',
                      style: MondayTS.whiteS12W400,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
