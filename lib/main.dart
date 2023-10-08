import 'package:animated_bottom_navbar/bottom-navbar/app-bottom-navigation-bar.dart';
import 'package:flut_blue/q.dart';
import 'package:flut_blue/third.dart';
import 'package:flutter/material.dart';

// import 'dart:ffi' as df;
import 'home.dart';

///adb shell am start -a android.intent.action.VIEW -d https://ahmadalfrehan.com/details com.ahmadalfrehan.deeplinking

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ToBeBottomNavBar(),
    );
  }
}

class ToBeBottomNavBar extends StatefulWidget {
  const ToBeBottomNavBar({Key? key}) : super(key: key);

  @override
  State<ToBeBottomNavBar> createState() => _ToBeBottomNavBarState();
}

class _ToBeBottomNavBarState extends State<ToBeBottomNavBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: const [
          Home(),
          ImageVideoPlayer(),
          Third(),
        ],
      ),
      bottomNavigationBar: AppBottomNavBar(
        labels: const [
          "home",
          "another",
          "third",
        ],
        tabIconColor: Colors.red,
        onTabItemSelected: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        images: const [
          'assets/icons/analytics.svg',
          'assets/icons/clock.svg',
          'assets/icons/profile.svg',
        ],
        initialSelectedTab: 'home',
      ),
    );
  }
}

