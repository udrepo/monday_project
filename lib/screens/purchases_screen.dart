import 'package:flutter/material.dart';
import 'package:monday_project/config/monday_text_styles.dart';

import '../config/monday_colors.dart';

class PurchasesScreen extends StatelessWidget {
  const PurchasesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Сатып алу тарихы',
          style: MondayTS.blackS20W600,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
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
                    Text(
                      'Төлем: 4990 ₸',
                      style: MondayTS.blackS20W600,
                    ),
                    Spacer(),
                    Text(
                      '23.02.23',
                      style: MondayTS.blackS15W400,
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
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
                    Text(
                      'Төлем: 4990 ₸',
                      style: MondayTS.blackS20W600,
                    ),
                    Spacer(),
                    Text(
                      '23.03.23',
                      style: MondayTS.blackS15W400,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
