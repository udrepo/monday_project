import 'package:flutter/material.dart';
import 'package:monday_project/config/monday_text_styles.dart';
import 'package:monday_project/widgets/empty_widget.dart';

import '../config/monday_colors.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Тест тапсыру тарихы',
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
          child: EmptyWidget()
          // Column(
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   children: [
          //     SizedBox(
          //       height: 20,
          //     ),
          //     Container(
          //       padding: EdgeInsets.all(20),
          //       decoration: BoxDecoration(
          //         color: MondayColors.kNavBarBgColor,
          //         border: Border.all(color: MondayColors.kBlueColor),
          //         borderRadius: BorderRadius.all(
          //           Radius.circular(25),
          //         ),
          //       ),
          //       child: Row(
          //         children: [
          //           Text(
          //             '1. 35/40',
          //             style: MondayTS.blackS20W600,
          //           ),
          //           Spacer(),
          //           Text(
          //             '03.03.23',
          //             style: MondayTS.blackS15W400,
          //           )
          //         ],
          //       ),
          //     ),
          //     SizedBox(height: 20,),
          //     Container(
          //       padding: EdgeInsets.all(20),
          //       decoration: BoxDecoration(
          //         color: MondayColors.kNavBarBgColor,
          //         border: Border.all(color: MondayColors.kBlueColor),
          //         borderRadius: BorderRadius.all(
          //           Radius.circular(25),
          //         ),
          //       ),
          //       child: Row(
          //         children: [
          //           Text(
          //             '2. 39/40',
          //             style: MondayTS.blackS20W600,
          //           ),
          //           Spacer(),
          //           Text(
          //             '11.03.23',
          //             style: MondayTS.blackS15W400,
          //           )
          //         ],
          //       ),
          //     )
          //   ],
          // ),
        ),
      ),
    );
  }
}
