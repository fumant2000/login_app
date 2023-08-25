import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/image_strings.dart';
import 'fade_in_animation_controller.dart';
import 'fade_in_animation_model.dart';

class TFadeInAnimation extends StatelessWidget {
   TFadeInAnimation({
    super.key,
     required this.durationInMs,  this.animate, 
     required this.child,
  });

  //final controller controller;
  final controller = Get.put((FadeInAnimationController()));

  final int durationInMs;
  final TAnimatePosition? animate;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Obx(()=> AnimatedPositioned(
          duration:  Duration(milliseconds:durationInMs),
          top: controller.animate.value  ? animate!.topAfter : animate!.topBefore,
          left: controller.animate.value  ? animate!.topAfter : animate!.topBefore,
          bottom: controller.animate.value  ? animate!.topAfter : animate!.topBefore ,
          right: controller.animate.value  ? animate!.topAfter : animate!.topBefore,
          child: AnimatedOpacity(
              duration:  Duration(milliseconds:durationInMs),
            opacity: controller.animate.value ? 1 : 0,
            child: child
            // Container(
            //   alignment: Alignment.topLeft,
            //   height: 200,
            //   width: 200,
            //   child: Image(image: AssetImage(tSplashTopIcon)),
            // ),
          )),
    );
  }
}