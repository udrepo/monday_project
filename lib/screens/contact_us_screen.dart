import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:monday_project/config/monday_colors.dart';
import 'package:url_launcher/url_launcher.dart';

import '../config/monday_text_styles.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Бізбен байланыс',
          style: MondayTS.blackS20W600,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 100,),
            Center(child: SvgPicture.asset('assets/contact_ill.svg', width: 250,)),
            const SizedBox(height: 50,),
            Text('Ұсыныстар немесе басқада сұрақтар бойынша бізге жазыңыз',
              textAlign: TextAlign.center,
              style: MondayTS.blackS20W600,),
            const SizedBox(height: 50,),
            SizedBox(
              height: 60,
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: ()async{
                          await launch("https://wa.me/77772051717/?text=Salem");
                        },
                        child: Container(
                          padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: MondayColors.kWhatsAppColor
                    ),
                          child: SvgPicture.asset('assets/icons/ic_whatsapp.svg', color: Colors.white,),
                  ),
                      ),),
                  SizedBox(width: 10,),
                  Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: () async{
                          await launch("https://t.me/ulantg");

                        },
                        child: Container(
                          padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          color: MondayColors.kTelegramColor
                    ),
                          child: SvgPicture.asset('assets/icons/ic_telegram.svg', color: Colors.white,),
                  ),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
