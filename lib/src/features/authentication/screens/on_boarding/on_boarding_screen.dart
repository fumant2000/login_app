import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../controllers/on_boarding_controller.dart';


class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});

 

  @override
  Widget build(BuildContext context) {
   
    final obController = OnBoardingController();

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: obController.pages,
            slideIconWidget: const Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
            liquidController: obController.controller,
            onPageChangeCallback: obController.onPageChangegedCallback,
          ),
          Positioned(
              bottom: 60,
              child: OutlinedButton(
                  onPressed: () =>
                   obController.animatedToNextSlide(),
                
                  style: ElevatedButton.styleFrom(
                      side: const BorderSide(color: Colors.black26),
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(15),
                      onPrimary: Colors.white),
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: const BoxDecoration(
                        color: Color(0xff272727), shape: BoxShape.circle),
                    child: Icon(Icons.arrow_forward_ios),
                  ))),
          Positioned(
              top: 50,
              right: 20,
              child: TextButton(
                  onPressed: () =>obController.skip() ,
                  child: Text(
                    "Skip",
                    style: TextStyle(color: Colors.grey),
                  ))),
          Obx(
            ()=> Positioned(
              bottom: 10,
              child: AnimatedSmoothIndicator(
                activeIndex: obController.currentPage.value,
                count: 3,
                effect: const WormEffect(
                    activeDotColor: Color(0xff272722), dotHeight: 5.0),
              ),
            ),
          )
        ],
      ),
    );
  }

}
