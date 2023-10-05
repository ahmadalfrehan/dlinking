import 'dart:async';

import 'package:flutter/material.dart';

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
      body: AnimatedContainer(
        alignment: Alignment.center,
        duration: const Duration(milliseconds: 100),
        child: Image.asset(
          imagePaths[currentIndex],
          width: MediaQuery.of(context).size.width / 2,
        ),
      ),
    );
  }
}

