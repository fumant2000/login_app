import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:login_app/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';

import '../../../../common_widgets/fade_in_animation/animation_design.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  //final splashScreenController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
      final controller = Get.put((FadeInAnimationController()));
      controller.startSplashAnimation();
    return Scaffold(
      body: Stack(
        children: [
          TFadeInAnimation(
            durationInMs: 1600,
            animate: TAnimatePosition(
                topAfter: -50,
                topBefore: -100,
                leftAfter: -50,
                leftBefore: -100),
            child: Container(
              alignment: Alignment.topLeft,
              height: 200,
              width: 200,
              child: Image(image: AssetImage(tSplashTopIcon)),
            ),
          ),
          TFadeInAnimation(
            durationInMs: 2000,
            animate: TAnimatePosition(
                topAfter: 80,
                topBefore: 80,
                leftAfter: tDefaultSize,
                leftBefore: -80),
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
          ),
          TFadeInAnimation(
            durationInMs: 2400,
            animate: TAnimatePosition(
              bottomAfter: 130,
              bottomBefore: 0,
            ),
            child: Container(
                width: 400.00,
                height: 300,
                decoration: BoxDecoration(
                  image: new DecorationImage(
                    image: ExactAssetImage(tSplashImage),
                    fit: BoxFit.fitHeight,
                  ),
                )),
          ),
          TFadeInAnimation(
              durationInMs: 2400,
              animate: TAnimatePosition(
                bottomAfter: 60,
                bottomBefore: 0,
                rightBefore: tDefaultSize,
                rightAfter: tDefaultSize
              ),
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
}
