import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:monday_project/config/monday_colors.dart';
import 'package:monday_project/screens/profile_screen.dart';
import 'package:monday_project/screens/study_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final BorderRadius _borderRadius = const BorderRadius.only(
    topLeft: Radius.circular(25),
    topRight: Radius.circular(25),
  );

  ShapeBorder? bottomBarShape = const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)),
  );
  SnakeBarBehaviour snakeBarStyle = SnakeBarBehaviour.floating;
  EdgeInsets padding = const EdgeInsets.all(12);

  int _selectedItemPosition = 0;
  SnakeShape snakeShape = SnakeShape.circle;

  Color selectedColor = MondayColors.kBlueColor.withOpacity(0.01);
  Color unselectedColor = Colors.blueGrey;

  Color? containerColor;

  List<Widget> screens = [
    StudyScreen(),
    Text('kek2'),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: true,
      extendBody: true,
      body: AnimatedContainer(
          color: Colors.white,
          duration: const Duration(seconds: 1),
          child: SafeArea(
              child: Container(
                padding: const EdgeInsets.all(20),
                  height: double.infinity,
                  width: double.infinity,
                  child: screens[_selectedItemPosition]))),
      bottomNavigationBar: SnakeNavigationBar.color(
        height: 60,
        behaviour: snakeBarStyle,
        snakeShape: snakeShape,
        shape: bottomBarShape,
        padding: padding,
        backgroundColor: MondayColors.kNavBarBgColor,

        ///configuration for SnakeNavigationBar.color
        snakeViewColor: selectedColor,
        selectedItemColor:
            snakeShape == SnakeShape.circle ? selectedColor : null,
        unselectedItemColor: unselectedColor,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        currentIndex: _selectedItemPosition,
        onTap: (index) => setState(() => _selectedItemPosition = index),
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/ic_book_nav.svg'),
              activeIcon: SvgPicture.asset(
                'assets/icons/ic_book_nav.svg',
                color: MondayColors.kBlueColor,
              ),
              label: 'Оқу'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/ic_clock_nav.svg'),
              activeIcon: SvgPicture.asset(
                'assets/icons/ic_clock_nav.svg',
                color: MondayColors.kBlueColor,
              ),
              label: 'Тест'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/ic_user_nav.svg'),
              activeIcon: SvgPicture.asset(
                'assets/icons/ic_user_nav.svg',
                color: MondayColors.kBlueColor,
              ),
              label: 'Жеке'),
        ],
      ),
    );
  }
}
