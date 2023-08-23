import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:login_app/src/features/authentication/controllers/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
   SplashScreen({super.key});


  final splashScreenController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashScreenController.startAnimation();
    return Scaffold(
      body: Stack(
        children: [
          Obx(()=> AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),
                top: splashScreenController.animate.value  ? -50 : -100,
                left: splashScreenController.animate.value  ? -50 : -100,
                child: Container(
                  alignment: Alignment.topLeft,
                  height: 200,
                  width: 200,
                  child: Image(image: AssetImage(tSplashTopIcon)),
                )),
          ),
          Obx(
           ()=> AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),
                top: 80,
                left: splashScreenController.animate.value  ? tDefaultSize : -100,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 1600),
                  opacity: splashScreenController.animate.value  ? 1 : 0,
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
          ),
          Obx(
           ()=> AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),
                right: -30,
                bottom: splashScreenController.animate.value  ? 130 : 0,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 1600),
                  opacity: splashScreenController.animate.value  ? 1 : 0,
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
          ),
          Obx(
           ()=> AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),
                bottom: splashScreenController.animate.value  ? 60 : 0,
                right: tDefaultSize,
                child: Container(
                  width: tSplashContainerSize,
                  height: tSplashContainerSize,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: tRedAccentColor,
                  ),
                )),
          ),
        ],
      ),
    );
  }

  
}
