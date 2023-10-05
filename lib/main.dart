import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: [
          const Home(),
          Container(),
          Container(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.add_circle), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle), label: "Home")
        ],
      ),
    );
  }
}

