import 'dart:ui';

import 'package:flutter/cupertino.dart';

class OnboardingModel {

  final String image;
  final String title;
  final String subTitle;
  final Color bgColor;

  OnboardingModel(
    {
      required this.image,
      required this.title,
      required this.subTitle,
      required this.bgColor,
    }
    );
}