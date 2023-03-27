import 'package:flutter/material.dart';
import 'package:monday_project/config/monday_colors.dart';
import 'package:monday_project/config/monday_text_styles.dart';
import 'package:monday_project/screens/contact_us_screen.dart';
import 'package:monday_project/screens/edit_profile_screen.dart';
import 'package:monday_project/screens/favorites_screen.dart';
import 'package:monday_project/screens/history_screen.dart';
import 'package:monday_project/screens/purchases_screen.dart';
import 'package:monday_project/screens/subscription_screen.dart';

import '../widgets/gray_btn_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
          decoration: BoxDecoration(
              color: MondayColors.kNavBarBgColor,
              borderRadius: BorderRadius.all(Radius.circular(25))),
          child: Row(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/ava.jpeg'),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                'Ulan Duisek',
                style: MondayTS.blackS24W600,
              ),
              Spacer(),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EditProfileScreen()),
                    );
                  },
                  icon: Icon(Icons.settings))
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        GrayButton(
          text: 'Жазылым',
          icon: 'assets/icons/ic_premium.svg',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SubscriptionScreen()),
            );
          },
        ),
        SizedBox(
          height: 20,
        ),
        GrayButton(
          text: 'Сатып алулар',
          icon: 'assets/icons/ic_cart.svg',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PurchasesScreen()),
            );
          },
        ),
        SizedBox(
          height: 20,
        ),
        GrayButton(
          text: 'Таңдаулылар',
          icon: 'assets/icons/ic_star.svg',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => FavoritesScreen()),
            );
          },
        ),
        SizedBox(
          height: 20,
        ),
        GrayButton(
          text: 'Бізбен байланыс',
          icon: 'assets/icons/ic_mail.svg',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ContactUsScreen()),
            );
          },
        ),
        SizedBox(
          height: 20,
        ),
        GrayButton(
          text: 'Тарих',
          icon: 'assets/icons/ic_history.svg',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HistoryScreen()),
            );
          },
        )
      ],
    );
  }
}
