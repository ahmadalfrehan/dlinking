import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "DAILY GOAL",
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
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(width: 0),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(height: 20),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('87',
                              style: TextStyle(
                                  fontSize: 90, color: Color(0xFF31436e))),
                          Column(
                            children: [
                              SizedBox(height: 40),
                              Text('%',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey)),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          SvgPicture.asset("assets/icons/fire.svg",
                              height: 35, width: 35),
                          const SizedBox(width: 30),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('1840',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 18,
                                      color: Color(0xFF31436e))),
                              Text('calories',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey,
                                  )),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 30),
                      Row(
                        children: [
                          SvgPicture.asset("assets/icons/steps.svg",
                              height: 35, width: 35),
                          const SizedBox(width: 30),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('3248',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w900,
                                      color: Color(0xFF31436e))),
                              Text('steps',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey)),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 30),
                      Row(
                        children: [
                          SvgPicture.asset("assets/icons/moon.svg",
                              height: 35, width: 35),
                          const SizedBox(width: 30),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('6.5',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w800,
                                      color: Color(0xFF31436e))),
                              Text('hours',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey)),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 30),
                Column(
                  children: [
                    const SizedBox(height: 70),
                    SizedBox(
                      height: Get.height / 2,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Transform.rotate(
                                angle: math.pi / 3,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    SizedBox(
                                      height: 120,
                                      width: 120,
                                      child: CircularProgressIndicator(
                                        value: value,
                                        color: Colors.red[400],
                                        strokeWidth: 18,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 130,
                                      width: 130,
                                      child: CircularProgressIndicator(
                                        value: value,
                                        color: Colors.white,
                                        strokeWidth: 12,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 140,
                                      width: 140,
                                      child: CircularProgressIndicator(
                                        value: value,
                                        color: Colors.blueAccent,
                                        strokeWidth: 18,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 150,
                                      width: 150,
                                      child: CircularProgressIndicator(
                                        value: value,
                                        color: Colors.white,
                                        strokeWidth: 5,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 160,
                                      width: 160,
                                      child: CircularProgressIndicator(
                                        value: value,
                                        color: Colors.blue[300],
                                        // backgroundColor: Colors.green,
                                        strokeWidth: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          AnimatedContainer(
                            alignment: Alignment.topCenter,
                            duration: const Duration(milliseconds: 50),
                            child: Image.asset(
                              imagePaths[currentIndex],
                              width: MediaQuery.of(context).size.width / 2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            _simpleWay(),
          ],
        ),
      ),
    );
  }
  _simpleWay() {
    return Container(
      width: Get.width / 1.1,
      height: 130,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.21),
              blurRadius: 17,
              spreadRadius: 0,
            )
          ]),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/pizza.jpg'),
          ),
          const SizedBox(width: 20),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                'a simple way \nto stay healthy',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.9,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'lorem impusm',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Icon(
                  Icons.location_on,
                  color: Colors.red,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
