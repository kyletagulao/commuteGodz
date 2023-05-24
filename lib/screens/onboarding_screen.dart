import 'package:flutter/material.dart';
import 'package:fordacommute/controllers/onboarding_controller.dart';
import 'package:fordacommute/values/colors/colors.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {


  @override
  Widget build(BuildContext context) {

    final controller = OnboardingController();

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: controller.pages,
            slideIconWidget: const Icon(Icons.arrow_back_ios_new_rounded),
            enableSideReveal: true,
            liquidController: controller.controller,
            enableLoop: false,
            onPageChangeCallback: (activePageIndex) {
              controller.onPageChangedCallback(activePageIndex);
            },
          ),
          Positioned(
            top: 40,
            right: 20,
            child: TextButton(
              onPressed: () => controller.skip(),
              child: const Text("Skip", style: TextStyle(color: tWhiteColor)),
            ),
          ),
          Obx(
            () => Positioned(
              bottom: 20,
              child: AnimatedSmoothIndicator(
                count: 3,
                activeIndex: controller.currentPage.value,
                effect: const WormEffect(
                  dotColor: tWhiteColor,
                  activeDotColor: tBlackColor,
                  dotHeight: 6.0,
                  dotWidth: 25.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }


}


