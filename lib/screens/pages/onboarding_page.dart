import 'package:flutter/material.dart';

import '../../values/models/onboarding_model.dart';
import '../../values/colors/colors.dart';
import '../../values/strings/text_strings.dart';

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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(image: AssetImage(model.image)),
              Column(
                children: [
                  Text(model.title,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineSmall),

                  const SizedBox(height: 20.0),
                  Text(model.subTitle,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleSmall),

                  const SizedBox(height: 20.0),
                  Visibility(
                    visible: (model.title == "Fare Calculator"),
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
                    ),
                  )
                ],
              ),
            ],
        ))
    );
  }
}