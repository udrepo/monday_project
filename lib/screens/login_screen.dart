import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:monday_project/screens/home_screen.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(),
              Align(
                  alignment: Alignment.centerLeft,
                  child: SvgPicture.asset(
                    'assets/icons/ic_monday.svg',
                    width: 100,
                    height: 100,
                  )),
              SizedBox(
                height: 20,
              ),
              Text(
                'Қош келдіңіз!',
                style: GoogleFonts.nunito(
                    textStyle:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
              ),
              SizedBox(height: 10,),
              Text('Жалғастыру үшін аккаунтқа кіріңіз.',
              style: GoogleFonts.nunito(
                textStyle: TextStyle(
                  fontSize: 14
                )
              ),
              ),
              SizedBox(
                height: 50,
              ),
              SocialLoginButton(
                height: 50,
                borderRadius: 10,
                  fontSize: 13,
                  buttonType: SocialLoginButtonType.google,
                  text: 'Google арқылы кіру',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  HomeScreen()),
                    );
                  }),
              SizedBox(
                height: 20,
              ),
              SocialLoginButton(
                height: 50,
                borderRadius: 10,
                fontSize: 13,
                buttonType: SocialLoginButtonType.appleBlack,
                text: 'Apple арқылы кіру',
                onPressed: () {},
              ),
              Spacer(),
              Text('Тіркелу арқылы Сіз Қолданушы '
                  'келісімі мен Құпиялық саясатының шарттарын қабылдайсыз',
              style: GoogleFonts.nunito(
                textStyle: TextStyle(
                  fontSize: 10,
                  color: Colors.grey
                )
              ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
