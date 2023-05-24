import 'package:flutter/material.dart';

import '../../values/models/onboarding_model.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key,
    required this.model,
  });

  final OnboardingModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(40),
        color: model.bgColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 20.0,),
            Image(image: AssetImage(model.image),
              ),
            Column(
              children: [
                Text(
                  model.title, textAlign: TextAlign.center, style: Theme
                    .of(context)
                    .textTheme
                    .headlineSmall,),
                const SizedBox(height: 20.0,),
                Text(model.subTitle, textAlign: TextAlign.center, style: Theme
                    .of(context)
                    .textTheme
                    .titleSmall,),
              ],
            ),
            const SizedBox(height: 90.0,),
          ],
        )
    );
  }
}