import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageVideoPlayer extends StatefulWidget {
  const ImageVideoPlayer({super.key});

  @override
  _ImageVideoPlayerState createState() => _ImageVideoPlayerState();
}

class _ImageVideoPlayerState extends State<ImageVideoPlayer> {
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

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
      setState(() {
        currentIndex = (currentIndex + 1) % imagePaths.length;
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
        body: Stack(
      children: [
        SizedBox(
          height: Get.height,
          width: Get.width,
        ),
        Transform.rotate(
          angle: 0.48,
          child: Transform(
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.005)
              ..rotateX(0.01 * -95)
              ..rotateY(-0.01 * -28),
            child: SizedBox(
              width: 100,
              height: 400,
              child: CustomPaint(
                painter: OpenPainter(),
              ),
            ),
          ),
        ),
        Image.asset(
          "assets/location.png",
          width: Get.width,
          height: Get.height,
        ),
        Transform.rotate(
          angle: 0.47,
          child: Transform(
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.005)
              ..rotateX(0.01 * -5)
              ..rotateY(-0.01 * -2),
            child: AnimatedContainer(
              alignment: Alignment.center,
              duration: const Duration(milliseconds: 100),
              child: Image.asset(
                imagePaths[currentIndex],
                width: MediaQuery.of(context).size.width / 2,
              ),
            ),
          ),
        ),
      ],
    ));
  }
}

class OpenPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Color(0xffF3E6DD)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 80;
    //draw arc
    canvas.drawArc(
        const Offset(-320, 0) & const Size(400, 400),
        3 * math.pi / 2, //radians
        3, //radians
        false,
        paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
