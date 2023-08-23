import 'package:flutter/material.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_strings.dart';

import '../welcome/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool animate = false;

  @override
  void initState() {
    startAnimation();
    //super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedPositioned(
              duration: const Duration(microseconds: 1600),
              top: animate ? -50 : -100,
              left: animate ? -50 : -100,
              child: Container(
                alignment: Alignment.topLeft,
                height: 200,
                width: 200,
                child: Image(image: AssetImage(tSplashTopIcon)),
              )),
          AnimatedPositioned(
              duration: const Duration(microseconds: 1600),
              top: 80,
              left: animate ? tDefaultSize : -100,
              child: AnimatedOpacity(
                duration: const Duration(microseconds: 1600),
                opacity: animate ? 1 : 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tAppName,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    Text(
                      tAppTagLine,
                      style: Theme.of(context).textTheme.headlineLarge,
                    )
                  ],
                ),
              )),
          AnimatedPositioned(
              duration: const Duration(microseconds: 1600),
              right: -30,
              bottom: animate ? 130 : 0,
              child: AnimatedOpacity(
                duration: const Duration(microseconds: 1600),
                opacity: animate ? 1 : 0,
                child: Container(
                    width: 400.00,
                    height: 300,
                    decoration: BoxDecoration(
                      image: new DecorationImage(
                        image: ExactAssetImage(tSplashImage),
                        fit: BoxFit.fitHeight,
                      ),
                    )),
              )),
          AnimatedPositioned(
              duration: const Duration(microseconds: 1600),
              bottom: animate ? 60 : 0,
              right: tDefaultSize,
              child: Container(
                width: tSplashContainerSize,
                height: tSplashContainerSize,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: tRedAccentColor,
                ),
              )),
        ],
      ),
    );
  }

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    setState(() {
      animate = true;
    });
    await Future.delayed(Duration(milliseconds: 5000));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
  }
}
