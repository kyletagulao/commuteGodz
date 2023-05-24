import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import '../screens/onboarding_page.dart';
import '../values/colors/colors.dart';
import '../values/images/image_strings.dart';
import '../values/models/onboarding_model.dart';
import '../values/strings/text_strings.dart';

class OnboardingController extends GetxController{

  final controller = LiquidController();
  RxInt currentPage = 0.obs;

  final pages = [

    OnboardingPage(model: OnboardingModel(
      image: tOnboardingImage1,
      title: tOnboardingTitle1,
      subTitle: tOnboardingSub1,
      bgColor: tOnboardingColor1,
    ),
    ),

    OnboardingPage(model: OnboardingModel(
      image: tOnboardingImage2,
      title: tOnboardingTitle2,
      subTitle: tOnboardingSub2,
      bgColor: tOnboardingColor2,
    ),
    ),

    OnboardingPage(model: OnboardingModel(
      image: tOnboardingImage3,
      title: tOnboardingTitle3,
      subTitle: tOnboardingSub3,
      bgColor: tOnboardingColor3,
    ),
    ),
  ];

  onPageChangedCallback(int activePageIndex) {
    currentPage.value = activePageIndex;
  }

  skip() => controller.jumpToPage(page: 2);

}