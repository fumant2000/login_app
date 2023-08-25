import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:login_app/src/features/authentication/screens/login/login_screen.dart';

import '../../../../common_widgets/fade_in_animation/animation_design.dart';
import '../../../../common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import '../../../../common_widgets/fade_in_animation/fade_in_animation_model.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
     final controller = Get.put((FadeInAnimationController()));
      controller.startAnimation();
      
    var height = Get.height;
    var mediaQwery = MediaQuery.of(context);
    //var height = mediaQwery.platformBrightness;
    var brightness =mediaQwery.platformBrightness;
    var isDarkMode = brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: isDarkMode ? tSecondaryColor : tBackgroundLightColor,
        body: Stack(
          children: [
             TFadeInAnimation(
              durationInMs: 1200,
              animate: TAnimatePosition(
                bottomAfter: 0,
                bottomBefore: -130,
                leftAfter: 0,
                leftBefore: 0,
                topAfter: 0,
                topBefore: 0,
                rightAfter: 0,
                rightBefore: 0
              ),
              child: Container(
                  padding: EdgeInsets.all(tDefaultSize),
                  child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(
                  image: AssetImage(tWelecomeScreenImage),
                  height: height * 0.5,
                ),
                Column(
                  children: [
                    Text(
                      tWelcomeTitle,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    Text(
                      tWelcomeSubTiTle,
                      style: Theme.of(context).textTheme.bodyMedium,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(child: OutlinedButton(
                      
                      onPressed: ()=>Get.to(()=>LoginScreen()), 
                      child: Text(tLogin.toUpperCase()))),
                    SizedBox(width: 13),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {}, 
                        child: Text(tSignup.toUpperCase())))
                  ],
                )
              ],
                  ),
                ),
            ),
          ],
        ));
  }
}
