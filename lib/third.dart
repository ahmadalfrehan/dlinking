import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';

class Third extends StatefulWidget {
  const Third({Key? key}) : super(key: key);

  @override
  State<Third> createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  int currentIndex = 0;
  List<String> imagePaths = [
    'assets/walking-animtaion/frame_0000.png',
    'assets/walking-animtaion/frame_0001.png',
    'assets/walking-animtaion/frame_0002.png',
    'assets/walking-animtaion/frame_0003.png',
    'assets/walking-animtaion/frame_0004.png',
    'assets/walking-animtaion/frame_0005.png',
    'assets/walking-animtaion/frame_0006.png',
    'assets/walking-animtaion/frame_0007.png',
    'assets/walking-animtaion/frame_0008.png',
    'assets/walking-animtaion/frame_0009.png',
    'assets/walking-animtaion/frame_0010.png',
    'assets/walking-animtaion/frame_0011.png',
    'assets/walking-animtaion/frame_0012.png',
    'assets/walking-animtaion/frame_0013.png',
    'assets/walking-animtaion/frame_0014.png',
    'assets/walking-animtaion/frame_0015.png',
    'assets/walking-animtaion/frame_0016.png',
    'assets/walking-animtaion/frame_0017.png',
    'assets/walking-animtaion/frame_0018.png',
    'assets/walking-animtaion/frame_0019.png',
    'assets/walking-animtaion/frame_0020.png',
    'assets/walking-animtaion/frame_0021.png',
    'assets/walking-animtaion/frame_0022.png',
    'assets/walking-animtaion/frame_0023.png',
    'assets/walking-animtaion/frame_0024.png',
    'assets/walking-animtaion/frame_0025.png',
    'assets/walking-animtaion/frame_0026.png',
    'assets/walking-animtaion/frame_0027.png',
    'assets/walking-animtaion/frame_0028.png',
    'assets/walking-animtaion/frame_0029.png',
    'assets/walking-animtaion/frame_0030.png',
    'assets/walking-animtaion/frame_0031.png',
    'assets/walking-animtaion/frame_0032.png',
    'assets/walking-animtaion/frame_0033.png',
    'assets/walking-animtaion/frame_0034.png',
    'assets/walking-animtaion/frame_0035.png',
    'assets/walking-animtaion/frame_0036.png',
    'assets/walking-animtaion/frame_0037.png',
  ];
  late Timer timer;

  double value = 0.4;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(milliseconds: 50), (timer) {
      setState(() {
        currentIndex = (currentIndex + 1) % imagePaths.length;
      });
    });
    Timer(const Duration(seconds: 1), () {
      timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
        setState(() {
          if (value <= 0.7) {
            value = value + 0.01;
          }
        });
      });
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: TweenAnimationBuilder(
        tween: Tween<double>(begin: -1.0, end: 0.0),
        // Start off-screen to the left
        duration: Duration(seconds: 1),
        builder: (context, double value, child) {
          return Transform.translate(
            offset: Offset(value * MediaQuery.of(context).size.width, 0.0),
            child: child,
          );
        },
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Column(
                children: [
                  SizedBox(height: Get.height / 5.5),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      AnimatedContainer(
                        height: 500,
                        width: 500,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          // color: Color(0xFFfaf5ef),
                        ),
                        alignment: Alignment.topCenter,
                        duration: const Duration(milliseconds: 50),
                        child: Image.asset(
                          imagePaths[currentIndex],
                          //width: MediaQuery.of(context).size.width / 2,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "PROFILE",
                          style: TextStyle(
                              color: Color(0xFF31436e),
                              fontWeight: FontWeight.w400,
                              fontSize: 19),
                        ),
                        SvgPicture.asset(
                          'assets/icons/menu.svg',
                          height: 20,
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                  const Row(
                    children: [
                      Text(
                        "Ron",
                        style: TextStyle(
                            fontSize: 80,
                            color: Color(0xFF31436e),
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Text(
                        "29 years old",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                  SizedBox(height: Get.height / 5),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFfaf5ef),                      
                    borderRadius: BorderRadius.circular(20)
                    ),
                    
                    child: Column(
                      children: [
                        const Text('Daily Goals',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey)),
                        const SizedBox(height: 20),
                        _simpleWay(Colors.red, "assets/icons/fire.svg",
                            "Calories", "2000"),
                        const SizedBox(height: 10),
                        _simpleWay(Color(0xFF7b00ff), "assets/icons/steps.svg",
                            "Steps", "3400"),
                        const SizedBox(height: 10),
                        _simpleWay(Color(0xFF019eff), "assets/icons/moon.svg",
                            "Sleeps", "8h"),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  _simpleWay(Color color, String icon, String title, String quantity) {
    return Container(
      width: Get.width / 1.1,
      height: 90,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color,
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.21),
              blurRadius: 17,
              spreadRadius: 0,
            )
          ]),
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              icon,
              color: Colors.white,
              height: 30,
              width: 30,
            ),
          ),
          const SizedBox(width: 20),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 15.9,
            ),
          ),
          const Spacer(),
          Text(
            quantity,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 15.9,
            ),
          ),
        ],
      ),
    );
  }
}
