import 'package:flutter/material.dart';
import 'package:fordacommute/controllers/onboarding_controller.dart';
import 'package:fordacommute/values/colors/colors.dart';
import 'package:fordacommute/values/strings/text_strings.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  bool visibleBox = false;
  final controller = OnboardingController();

  @override
  Widget build(BuildContext context) {
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
              setState(() {
                controller.onPageChangedCallback(activePageIndex);
                visibleBox = (controller.currentPage.value == 2);
              });
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
          // if (controller.currentPage.value == 2)
          Positioned(
            bottom: 110,
            child: Visibility(
              visible: visibleBox,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(140, 50),
                    backgroundColor: tPrimaryColor,
                    foregroundColor: tWhiteColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    )
                ),
                onPressed: () {
                  // Redirect to the welcome screen
                  // Navigator.pushReplacementNamed(context, '/welcome');
                },
                child: Text(tGetStarted, style: Theme.of(context).textTheme.labelLarge,),
            ))
          ),
          Obx(
                () => Positioned(
              bottom: 20,
              child: AnimatedSmoothIndicator(
                count: 3,
                activeIndex: controller.currentPage.value,
                effect: const WormEffect(
                  dotColor: Color(0xFFD7D7D7),
                  activeDotColor: Color(0xFF212633),
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

