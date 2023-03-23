import 'package:flutter/material.dart';
import 'package:monday_project/config/monday_text_styles.dart';

import '../config/monday_colors.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _firstName = TextEditingController(text: 'Ulan');
    final TextEditingController _secondName = TextEditingController(text: 'Duisek');
    final TextEditingController _number = TextEditingController(text: '+7 777 205 1717');
    final TextEditingController _email = TextEditingController(text: 'ulan@gmail.com');
    return Scaffold(
      appBar: AppBar(
        title: Text('Профильді өзгерту', style: MondayTS.blackS20W600,),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IntrinsicHeight(
              child: Container(
                margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: MondayColors.kNavBarBgColor,
                      borderRadius: BorderRadius.all(Radius.circular(25),),),
                child: Column(
                  children: [
                    CircleAvatar(radius: 40, backgroundImage: AssetImage('assets/ava.jpeg'),),
                    SizedBox(height: 20,),
                    TextFormField(
                      autofocus: false,
                      controller: _firstName,
                      autovalidateMode:
                      AutovalidateMode.onUserInteraction,
                     // validator: validateCyrillicFieldNotRequired,
                      textInputAction: TextInputAction.search,
                      onFieldSubmitted: (_) async {},
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.circular(25.0),
                        ),
                        contentPadding: EdgeInsets.fromLTRB(
                            25.0, 20.0, 20.0, 10.0),
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      autofocus: false,
                      controller: _secondName,
                      autovalidateMode:
                      AutovalidateMode.onUserInteraction,
                      // validator: validateCyrillicFieldNotRequired,
                      textInputAction: TextInputAction.search,
                      onFieldSubmitted: (_) async {},
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.circular(25.0),
                        ),
                        contentPadding: EdgeInsets.fromLTRB(
                            25.0, 20.0, 20.0, 10.0),
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      autofocus: false,
                      controller: _number,
                      autovalidateMode:
                      AutovalidateMode.onUserInteraction,
                      keyboardType: TextInputType.number,
                      // validator: validateCyrillicFieldNotRequired,
                      textInputAction: TextInputAction.search,
                      onFieldSubmitted: (_) async {},
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.circular(25.0),
                        ),
                        contentPadding: EdgeInsets.fromLTRB(
                            25.0, 20.0, 20.0, 10.0),
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      autofocus: false,
                      keyboardType: TextInputType.emailAddress,
                      controller: _email,
                      autovalidateMode:
                      AutovalidateMode.onUserInteraction,
                      // validator: validateCyrillicFieldNotRequired,
                      textInputAction: TextInputAction.search,
                      onFieldSubmitted: (_) async {},
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.circular(25.0),
                        ),
                        contentPadding: EdgeInsets.fromLTRB(
                            25.0, 20.0, 20.0, 10.0),
                      ),
                    ),
                    SizedBox(height: 20,),
                    SizedBox(
                      width: double.infinity,
                      height: 45,
                      child: ElevatedButton(
                          onPressed: (){},
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),

                                )
                            )
                        ),
                          // style: OutlinedButton.styleFrom(
                          //   side: BorderSide(width: 1.0, color: MondayColors.kGreenColor),
                          // ),
                          child: Text('Сақтау', style: MondayTS.whiteS12W400,)),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
